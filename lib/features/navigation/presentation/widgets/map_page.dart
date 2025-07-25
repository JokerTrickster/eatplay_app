import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  bool _isMapLoaded = false;
  late WebViewController _webViewController;

  @override
  void initState() {
    super.initState();
    _initializeKakaoMap();
  }

  void _initializeKakaoMap() async {
    try {
      setState(() {
        _isMapLoaded = true;
      });
    } catch (e) {
      print('카카오맵 초기화 실패: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('맵'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              // 현재 위치로 이동
              _moveToCurrentLocation();
            },
            icon: const Icon(Icons.my_location),
          ),
        ],
      ),
      body: _isMapLoaded
          ? _buildKakaoMap()
          : const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 16),
                  Text('맵을 불러오는 중...'),
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 검색 기능
          _showSearchDialog();
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.search, color: Colors.white),
      ),
    );
  }

  Widget _buildKakaoMap() {
    return WebViewWidget(
      controller: WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(Uri.parse('https://map.kakao.com'))
        ..setNavigationDelegate(
          NavigationDelegate(
            onPageFinished: (String url) {
              print('카카오맵 로드 완료: $url');
              _injectKakaoMapScript();
            },
          ),
        )
        ..addJavaScriptChannel(
          'MapChannel',
          onMessageReceived: (JavaScriptMessage message) {
            print('맵 메시지: ${message.message}');
          },
        ),
    );
  }

  void _injectKakaoMapScript() {
    // 카카오맵 JavaScript API 주입
    _webViewController.runJavaScript('''
      // 카카오맵 JavaScript API 로드
      var script = document.createElement('script');
      script.src = 'https://dapi.kakao.com/v2/maps/sdk.js?appkey=ff963f3bb391a6fc5975dcd8adc5fd1e&libraries=services';
      document.head.appendChild(script);
      
      script.onload = function() {
        console.log('카카오맵 API 로드 완료');
        // 맵 초기화
        var container = document.getElementById('map');
        if (!container) {
          container = document.createElement('div');
          container.id = 'map';
          container.style.width = '100%';
          container.style.height = '100%';
          document.body.appendChild(container);
        }
        
        var options = {
          center: new kakao.maps.LatLng(37.5665, 126.9780),
          level: 3
        };
        
        var map = new kakao.maps.Map(container, options);
        window.kakaoMap = map;
      };
    ''');
  }

  void _moveToCurrentLocation() {
    // 현재 위치로 이동하는 JavaScript 실행
    _webViewController.runJavaScript('''
      if (window.kakaoMap) {
        // 서울 시청 좌표로 이동 (실제로는 GPS 권한 필요)
        var moveLatLng = new kakao.maps.LatLng(37.5665, 126.9780);
        window.kakaoMap.setCenter(moveLatLng);
        console.log('현재 위치로 이동');
      }
    ''');

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('현재 위치로 이동했습니다')),
    );
  }

  void _showSearchDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final searchController = TextEditingController();

        return AlertDialog(
          title: const Text('장소 검색'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: searchController,
                decoration: const InputDecoration(
                  labelText: '검색어',
                  hintText: '장소명을 입력하세요',
                ),
                onSubmitted: (value) {
                  Navigator.of(context).pop();
                  _searchPlace(value);
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('취소'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _searchPlace(searchController.text);
              },
              child: const Text('검색'),
            ),
          ],
        );
      },
    );
  }

  void _searchPlace(String query) {
    if (query.isNotEmpty) {
      // 카카오맵에서 검색하는 JavaScript 실행
      _webViewController.runJavaScript('''
        if (window.kakaoMap && kakao.maps.services) {
          // 장소 검색 서비스 사용
          var places = new kakao.maps.services.Places();
          
          places.keywordSearch('$query', function(result, status) {
            if (status === kakao.maps.services.Status.OK) {
              // 검색 결과가 있으면 첫 번째 결과로 이동
              if (result.length > 0) {
                var place = result[0];
                var moveLatLng = new kakao.maps.LatLng(place.y, place.x);
                window.kakaoMap.setCenter(moveLatLng);
                console.log('검색 결과: ' + place.place_name);
              }
            }
          });
        }
      ''');

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('"$query" 검색 중...')),
      );
    }
  }
}
