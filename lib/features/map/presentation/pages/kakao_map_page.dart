import 'package:flutter/material.dart';
import '../../../history/domain/entities/history_item.dart';
import 'package:webview_flutter/webview_flutter.dart';

class KakaoMapPage extends StatefulWidget {
  final HistoryItem? selectedHistoryItem;

  const KakaoMapPage({super.key, this.selectedHistoryItem});

  @override
  State<KakaoMapPage> createState() => _KakaoMapPageState();
}

class _KakaoMapPageState extends State<KakaoMapPage> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadHtmlString(_getKakaoMapHtml());
  }

  String _getKakaoMapHtml() {
    final markerLat = widget.selectedHistoryItem?.latitude ?? 37.5665;
    final markerLng = widget.selectedHistoryItem?.longitude ?? 126.9780;
    final markerTitle = widget.selectedHistoryItem?.restaurantName ?? '시청역';

    return '''
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>카카오맵</title>
  <style>body,html,#map{margin:0;padding:0;height:100%;}</style>
</head>
<body>
<div id="map" style="width:100%;height:100vh;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=YOUR_KAKAO_MAP_KEY"></script>
<script>
  var mapContainer = document.getElementById('map');
  var mapOption = {
    center: new kakao.maps.LatLng($markerLat, $markerLng),
    level: 3
  };
  var map = new kakao.maps.Map(mapContainer, mapOption);
  var marker = new kakao.maps.Marker({
    position: new kakao.maps.LatLng($markerLat, $markerLng)
  });
  marker.setMap(map);
  var infowindow = new kakao.maps.InfoWindow({
    content: '<div style="padding:5px;font-size:14px;">$markerTitle</div>'
  });
  infowindow.open(map, marker);
</script>
</body>
</html>
    ''';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('지도 보기')),
      body: WebViewWidget(controller: _controller),
    );
  }
}
