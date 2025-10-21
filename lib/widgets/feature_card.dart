import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../models/feature_category.dart';

/// Tekil özellik kartı widget'ı
class FeatureCard extends StatelessWidget {
  final FeatureItem item;

  const FeatureCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Fotoğraf kısmı
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: item.imagePath.isEmpty
                  ? Container(
                      color: AppColors.divider,
                      child: Center(
                        child: Icon(
                          Icons.image_outlined,
                          size: 48,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    )
                  : Image.asset(
                      item.imagePath,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: AppColors.divider,
                          child: Center(
                            child: Icon(
                              Icons.broken_image_outlined,
                              size: 48,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ),
          
          // Yazı kısmı
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  item.subtitle,
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 12,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

