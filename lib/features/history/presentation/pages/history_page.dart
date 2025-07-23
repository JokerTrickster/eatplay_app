import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection_container.dart' as di;
import '../bloc/history_bloc.dart';
import '../../domain/entities/history_item.dart';
import 'add_history_page.dart';
import 'history_detail_page.dart';

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
      body: BlocProvider(
        create: (context) =>
            di.getIt<HistoryBloc>()..add(const HistoryEvent.loadHistory()),
        child: BlocBuilder<HistoryBloc, HistoryState>(
          builder: (context, state) {
            return state.maybeWhen(
              initial: () => const SizedBox(),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (historyItems) =>
                  _buildHistoryList(context, historyItems),
              error: (failure) => Center(
                child: Text('에러: ${failure.message}'),
              ),
              orElse: () => const SizedBox(),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddHistoryPage(),
            ),
          );
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget _buildHistoryList(
      BuildContext context, List<HistoryItem> historyItems) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: historyItems.length,
      itemBuilder: (context, index) {
        final item = historyItems[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange.shade100,
              child: const Icon(Icons.restaurant, color: Colors.orange),
            ),
            title: Text(item.restaurantName),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('방문일: ${item.visitDate}'),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 16),
                    Text(' ${item.rating}'),
                    const SizedBox(width: 8),
                    Text(item.category),
                  ],
                ),
                if (item.review.isNotEmpty)
                  Text(
                    item.review,
                    style: const TextStyle(fontStyle: FontStyle.italic),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
              ],
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HistoryDetailPage(historyItem: item),
                ),
              );
            },
            onLongPress: () => _showDeleteDialog(context, item),
          ),
        );
      },
    );
  }

  void _showDeleteDialog(BuildContext context, HistoryItem item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('히스토리 삭제'),
          content: Text('${item.restaurantName}을(를) 삭제하시겠습니까?'),
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
                    .add(HistoryEvent.deleteHistory(item.id));
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
}
