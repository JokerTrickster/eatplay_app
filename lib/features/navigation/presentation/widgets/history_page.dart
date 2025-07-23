import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('히스토리'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 10, // 임시 데이터
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.orange.shade100,
                child: Icon(Icons.restaurant, color: Colors.orange),
              ),
              title: Text('음식점 ${index + 1}'),
              subtitle: Text(
                  '방문일: 2024-12-${(index + 1).toString().padLeft(2, '0')}'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // 상세 페이지로 이동
              },
            ),
          );
        },
      ),
    );
  }
}
