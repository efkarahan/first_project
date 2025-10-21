import 'package:flutter/material.dart';
import '../models/feature_category.dart';
import 'feature_card.dart';

/// Kategori bölümü (başlık + 2 sütunlu grid)
class CategorySection extends StatelessWidget {
  final FeatureCategory category;

  const CategorySection({
    super.key,
    required this.category,
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
        
        // 2 sütunlu grid
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.85,
            ),
            itemCount: category.items.length,
            itemBuilder: (context, index) {
              return FeatureCard(item: category.items[index]);
            },
          ),
        ),
      ],
    );
  }
}

