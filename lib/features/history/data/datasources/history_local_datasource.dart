import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/history_item_model.dart';

abstract class HistoryLocalDataSource {
  Future<List<HistoryItemModel>> getHistoryItems();
}

class HistoryLocalDataSourceImpl implements HistoryLocalDataSource {
  @override
  Future<List<HistoryItemModel>> getHistoryItems() async {
    try {
      // JSON 파일에서 데이터 읽기
      final String response =
          await rootBundle.loadString('assets/data/history_data.json');
      final data = await json.decode(response);

      final List<dynamic> historiesJson = data['histories'];

      return historiesJson
          .map((json) => HistoryItemModel.fromJson(json))
          .toList();
    } catch (e) {
      throw Exception('Failed to load history data: $e');
    }
  }
}
