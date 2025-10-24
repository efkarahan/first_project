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
                    imagePath: 'assets/images/photo_editing/photo_restore.jpeg',
                  ),
                  FeatureItem(
                    title: 'Black & White',
                    subtitle: 'Vintage style conversion',
                    imagePath: 'assets/images/photo_editing/black_white.jpeg',
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

            const SizedBox(height: 32),

            // Product & Brand kategorisi
            CategorySection(
              category: FeatureCategory(
                title: 'Product & Brand',
                items: [
                  FeatureItem(
                    title: 'Product Photo',
                    subtitle: 'Professional product shoot',
                    imagePath: '',
                  ),
                  FeatureItem(
                    title: 'Brand Logo',
                    subtitle: 'AI logo generation',
                    imagePath: '',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Interior Design kategorisi
            CategorySection(
              category: FeatureCategory(
                title: 'Interior Design',
                items: [
                  FeatureItem(
                    title: 'Room Design',
                    subtitle: 'AI interior styling',
                    imagePath: '',
                  ),
                  FeatureItem(
                    title: 'Furniture Style',
                    subtitle: 'Modern furniture design',
                    imagePath: '',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Travel Places kategorisi
            CategorySection(
              category: FeatureCategory(
                title: 'Travel Places',
                items: [
                  FeatureItem(
                    title: 'City Landmark',
                    subtitle: 'Famous landmarks',
                    imagePath: '',
                  ),
                  FeatureItem(
                    title: 'Nature Scene',
                    subtitle: 'Beautiful landscapes',
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
