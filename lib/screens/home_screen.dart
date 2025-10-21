import 'package:flutter/material.dart';
import '../models/feature_category.dart';
import '../widgets/home_header.dart';
import '../widgets/category_section.dart';

/// Ana ekran - Tüm özelliklerin listelendiği sayfa
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // Üst kısım - Header
            const HomeHeader(),
            
            const SizedBox(height: 8),
            
            // Photo Editing kategorisi
            CategorySection(
              category: FeatureCategory(
                title: 'Photo Editing',
                items: [
                  FeatureItem(
                    title: 'Photo Restore',
                    subtitle: 'Damaged photo repair',
                    imagePath: 'assets/images/photo_restore.jpeg',
                  ),
                  FeatureItem(
                    title: 'Black & White',
                    subtitle: 'Vintage style conversion',
                    imagePath: '',
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 32),
            
            // Creative & Art kategorisi
            CategorySection(
              category: FeatureCategory(
                title: 'Creative & Art',
                items: [
                  FeatureItem(
                    title: 'Action Figure',
                    subtitle: '3D character figure',
                    imagePath: '',
                  ),
                  FeatureItem(
                    title: 'Change Outfit',
                    subtitle: 'Outfit change style',
                    imagePath: '',
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 32),
            
            // Portrait & People kategorisi
            CategorySection(
              category: FeatureCategory(
                title: 'Portrait & People',
                items: [
                  FeatureItem(
                    title: 'AI Portrait',
                    subtitle: 'Professional portrait',
                    imagePath: '',
                  ),
                  FeatureItem(
                    title: 'Face Enhance',
                    subtitle: 'Face enhancement',
                    imagePath: '',
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

