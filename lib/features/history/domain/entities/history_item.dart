import 'package:equatable/equatable.dart';

class HistoryItem extends Equatable {
  final String id;
  final String restaurantName;
  final String visitDate;
  final double rating;
  final String review;
  final String imageUrl;
  final String category;

  const HistoryItem({
    required this.id,
    required this.restaurantName,
    required this.visitDate,
    required this.rating,
    required this.review,
    required this.imageUrl,
    required this.category,
  });

  @override
  List<Object?> get props => [
        id,
        restaurantName,
        visitDate,
        rating,
        review,
        imageUrl,
        category,
      ];
}
