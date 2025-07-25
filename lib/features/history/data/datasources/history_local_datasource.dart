import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:shared_preferences/shared_preferences.dart';
import '../models/history_item_model.dart';

abstract class HistoryLocalDataSource {
  Future<List<HistoryItemModel>> getHistoryItems();
  Future<void> saveHistoryItem(HistoryItemModel item);
  Future<void> deleteHistoryItem(String id);
  Future<void> updateHistoryItem(HistoryItemModel item);
  Future<void> clearAllHistory();
}

class HistoryLocalDataSourceImpl implements HistoryLocalDataSource {
  static const String _key = 'history_items';

  @override
  Future<List<HistoryItemModel>> getHistoryItems() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? historyJson = prefs.getString(_key);

      if (historyJson == null || historyJson.isEmpty) {
        // 캐시가 비어있으면 기본 데이터 로드
        return await _loadDefaultData();
      }

      final List<dynamic> historyList = json.decode(historyJson);
      final List<HistoryItemModel> items = [];

      for (final item in historyList) {
        try {
          final migratedItem = _migrateOldData(item);
          items.add(migratedItem);
        } catch (e) {
          print('Failed to parse history item: $e');
          continue;
        }
      }

      return items;
    } catch (e) {
      print('Cache error: $e');
      await clearAllHistory();
      return await _loadDefaultData();
    }
  }

  // 기존 데이터를 새로운 구조로 마이그레이션
  HistoryItemModel _migrateOldData(Map<String, dynamic> json) {
    return HistoryItemModel(
      id: json['id'] ?? DateTime.now().millisecondsSinceEpoch.toString(),
      title: json['title'] ?? json['restaurantName'] ?? '',
      description: json['description'] ?? json['review'] ?? '',
      date:
          json['date'] != null ? DateTime.parse(json['date']) : DateTime.now(),
      latitude: json['latitude']?.toDouble(),
      longitude: json['longitude']?.toDouble(),
      imageUrl: json['imageUrl'],
      restaurantName: json['restaurantName'] ?? json['title'] ?? '',
      visitDate: json['visitDate'] ?? DateTime.now().toString().split(' ')[0],
      rating: (json['rating'] ?? 0.0).toDouble(),
      category: json['category'] ?? '음식점',
      review: json['review'] ?? '',
    );
  }

  @override
  Future<void> saveHistoryItem(HistoryItemModel item) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final List<HistoryItemModel> currentItems = await getHistoryItems();
      currentItems.add(item);
      await _saveToPrefs(currentItems);
    } catch (e) {
      print('Save error: $e');
      throw Exception('Failed to save history item');
    }
  }

  @override
  Future<void> deleteHistoryItem(String id) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final List<HistoryItemModel> currentItems = await getHistoryItems();
      currentItems.removeWhere((item) => item.id == id);
      await _saveToPrefs(currentItems);
    } catch (e) {
      print('Delete error: $e');
      throw Exception('Failed to delete history item');
    }
  }

  @override
  Future<void> updateHistoryItem(HistoryItemModel item) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final List<HistoryItemModel> currentItems = await getHistoryItems();
      final index = currentItems.indexWhere((element) => element.id == item.id);
      if (index != -1) {
        currentItems[index] = item;
        await _saveToPrefs(currentItems);
      }
    } catch (e) {
      print('Update error: $e');
      throw Exception('Failed to update history item');
    }
  }

  @override
  Future<void> clearAllHistory() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_key);
    } catch (e) {
      print('Clear error: $e');
      throw Exception('Failed to clear history');
    }
  }

  Future<void> _saveToPrefs(List<HistoryItemModel> items) async {
    final prefs = await SharedPreferences.getInstance();
    final List<Map<String, dynamic>> jsonList =
        items.map((item) => item.toJson()).toList();
    await prefs.setString(_key, json.encode(jsonList));
  }

  Future<List<HistoryItemModel>> _loadDefaultData() async {
    try {
      final String jsonString =
          await rootBundle.loadString('assets/data/history_data.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> histories = jsonData['histories'] ?? [];

      return histories.map((item) => HistoryItemModel.fromJson(item)).toList();
    } catch (e) {
      print('Failed to load default data: $e');
      return [];
    }
  }
}
