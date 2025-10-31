import 'package:flutter/material.dart';
import '../models/feature_category.dart';
import 'feature_card.dart';

/// Kategori bölümü (başlık + yatay kaydırmalı liste)
class CategorySection extends StatelessWidget {
  final FeatureCategory category;
  final double? cardWidth;

  const CategorySection({
    super.key,
    required this.category,
    this.cardWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Kategori başlığı
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            category.title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        
        const SizedBox(height: 16),
        
        // Yatay kaydırmalı liste
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: category.items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  right: index < category.items.length - 1 ? 12 : 0,
                ),
                child: SizedBox(
                  width: cardWidth ?? 158,
                  child: FeatureCard(item: category.items[index]),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

