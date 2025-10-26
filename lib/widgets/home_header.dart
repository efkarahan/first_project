import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

/// Ana sayfa üst kısmı (başlık, Get Pro butonu, ayarlar)
class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Sol taraf - Başlık
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SUSAM AI',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      letterSpacing: 1.2,
                    ),
              ),
              const SizedBox(height: 4),
              Text(
                'AI IMAGE & EDITOR',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 12,
                  letterSpacing: 0.5,
                ),
              ),
              ],
            ),
          ),
          
          // Sağ taraf - Get Pro ve Settings
          Row(
            children: [
              // Get Pro butonu
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFA855F7), // Mor
                      Color(0xFFFF9500), // Turuncu
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: AppColors.textPrimary,
                      size: 18,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'Get Pro',
                      style: TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(width: 12),
              
              // Settings ikonu
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.cardBackground,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.settings_rounded,
                  color: AppColors.textPrimary,
                  size: 24,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

