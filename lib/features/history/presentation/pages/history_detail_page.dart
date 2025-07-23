import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../bloc/history_bloc.dart';
import '../../domain/entities/history_item.dart';

class HistoryDetailPage extends StatefulWidget {
  final HistoryItem historyItem;

  const HistoryDetailPage({Key? key, required this.historyItem})
      : super(key: key);

  @override
  State<HistoryDetailPage> createState() => _HistoryDetailPageState();
}

class _HistoryDetailPageState extends State<HistoryDetailPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _titleController;
  late TextEditingController _reviewController;
  late DateTime _selectedDate;
  late double _rating;
  late String _selectedCategory;
  late List<File> _selectedImages;
  final ImagePicker _picker = ImagePicker();

  final List<String> _categories = ['음식점', '놀거리', '카페', '기타'];

  @override
  void initState() {
    super.initState();
    _titleController =
        TextEditingController(text: widget.historyItem.restaurantName);
    _reviewController = TextEditingController(text: widget.historyItem.review);

    // 날짜 파싱
    final dateParts = widget.historyItem.visitDate.split('-');
    _selectedDate = DateTime(
      int.parse(dateParts[0]),
      int.parse(dateParts[1]),
      int.parse(dateParts[2]),
    );

    _rating = widget.historyItem.rating;
    // 카테고리가 목록에 없으면 기본값으로 설정
    _selectedCategory = _categories.contains(widget.historyItem.category)
        ? widget.historyItem.category
        : '음식점';
    _selectedImages = widget.historyItem.imageUrl.isNotEmpty
        ? [File(widget.historyItem.imageUrl)]
        : [];
  }

  @override
  void dispose() {
    _titleController.dispose();
    _reviewController.dispose();
    super.dispose();
  }

  Future<void> _pickImage(ImageSource source) async {
    if (_selectedImages.length >= 3) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('이미지는 최대 3장까지 첨부할 수 있습니다.')),
      );
      return;
    }

    try {
      final XFile? image = await _picker.pickImage(source: source);
      if (image != null) {
        setState(() {
          _selectedImages.add(File(image.path));
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('이미지 선택 중 오류가 발생했습니다: $e')),
      );
    }
  }

  void _showImagePickerDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('이미지 선택'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('카메라로 촬영'),
                onTap: () {
                  Navigator.of(context).pop();
                  _pickImage(ImageSource.camera);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('갤러리에서 선택'),
                onTap: () {
                  Navigator.of(context).pop();
                  _pickImage(ImageSource.gallery);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _removeImage(int index) {
    setState(() {
      _selectedImages.removeAt(index);
    });
  }

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void _updateHistory() {
    if (_formKey.currentState!.validate()) {
      final updatedHistoryItem = HistoryItem(
        id: widget.historyItem.id,
        restaurantName: _titleController.text,
        visitDate:
            '${_selectedDate.year}-${_selectedDate.month.toString().padLeft(2, '0')}-${_selectedDate.day.toString().padLeft(2, '0')}',
        rating: _rating,
        review: _reviewController.text,
        imageUrl: _selectedImages.isNotEmpty ? _selectedImages.first.path : '',
        category: _selectedCategory,
      );

      // Bloc에 수정 이벤트 발생
      context
          .read<HistoryBloc>()
          .add(HistoryEvent.updateHistory(updatedHistoryItem));

      Navigator.of(context).pop();
    }
  }

  void _showDeleteDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('히스토리 삭제'),
          content: const Text('이 히스토리를 삭제하시겠습니까?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('아니요'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                context
                    .read<HistoryBloc>()
                    .add(HistoryEvent.deleteHistory(widget.historyItem.id));
                Navigator.of(context).pop(); // 상세 페이지 닫기
              },
              child: const Text(
                '예',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('히스토리 상세'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: _showDeleteDialog,
            icon: const Icon(Icons.delete),
          ),
          TextButton(
            onPressed: _updateHistory,
            child: const Text(
              '저장',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // 제목
            TextFormField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: '제목 *',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '제목을 입력해주세요';
                }
                return null;
              },
            ),

            const SizedBox(height: 16),

            // 방문 날짜
            ListTile(
              title: const Text('방문 날짜'),
              subtitle: Text(
                '${_selectedDate.year}-${_selectedDate.month.toString().padLeft(2, '0')}-${_selectedDate.day.toString().padLeft(2, '0')}',
              ),
              trailing: const Icon(Icons.calendar_today),
              onTap: _selectDate,
            ),

            const SizedBox(height: 16),

            // 평점
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '평점',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${_rating.toStringAsFixed(1)}',
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 16),
                        ...List.generate(5, (index) {
                          return IconButton(
                            icon: Icon(
                              index < _rating ? Icons.star : Icons.star_border,
                              color: Colors.amber,
                              size: 30,
                            ),
                            onPressed: () {
                              setState(() {
                                _rating = index + 1.0;
                              });
                            },
                          );
                        }),
                      ],
                    ),
                    Slider(
                      value: _rating,
                      min: 1.0,
                      max: 5.0,
                      divisions: 8,
                      label: _rating.toStringAsFixed(1),
                      onChanged: (value) {
                        setState(() {
                          _rating = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // 카테고리
            DropdownButtonFormField<String>(
              value: _selectedCategory,
              decoration: const InputDecoration(
                labelText: '카테고리',
                border: OutlineInputBorder(),
              ),
              items: _categories.map((String category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedCategory = newValue!;
                });
              },
            ),

            const SizedBox(height: 16),

            // 평가
            TextFormField(
              controller: _reviewController,
              maxLines: 4,
              decoration: const InputDecoration(
                labelText: '평가',
                border: OutlineInputBorder(),
                hintText: '방문 후기를 작성해주세요...',
              ),
            ),

            const SizedBox(height: 16),

            // 이미지 첨부
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '이미지 첨부 (최대 3장)',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text('${_selectedImages.length}/3'),
                      ],
                    ),
                    const SizedBox(height: 8),

                    // 이미지 선택 버튼
                    if (_selectedImages.length < 3)
                      ElevatedButton.icon(
                        onPressed: _showImagePickerDialog,
                        icon: const Icon(Icons.add_photo_alternate),
                        label: const Text('이미지 추가'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                        ),
                      ),

                    const SizedBox(height: 8),

                    // 선택된 이미지들
                    if (_selectedImages.isNotEmpty)
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _selectedImages.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.file(
                                      _selectedImages[index],
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    top: 4,
                                    right: 4,
                                    child: GestureDetector(
                                      onTap: () => _removeImage(index),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.close,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
