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
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF000000), // Zifiri siyah (SUSAM AI)
              Color(0xFF000000), // Hala zifiri siyah
              Color(0xFF1C1C1C), // Açılmaya başlıyor
              Color(0xFF252525), // Photo Editing bitişinde
            ],
            stops: [0.0, 0.15, 0.5, 0.8],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Üst kısım - Header (Sabit)
              const HomeHeader(),
              
              const SizedBox(height: 4),
              
              // Scroll edilebilir içerik
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [

            // Photo Editing kategorisi
            CategorySection(
              cardWidth: 158,
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
                  FeatureItem(
                    title: 'Color Enhance',
                    subtitle: 'Vibrant color boost',
                    imagePath: '',
                  ),
                  FeatureItem(
                    title: 'Remove Background',
                    subtitle: 'Background removal',
                    imagePath: '',
                  ),
                  FeatureItem(
                    title: 'Remove Person',
                    subtitle: 'Object removal tool',
                    imagePath: '',
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 32),

            // Creative & Art kategorisi
            CategorySection(
              cardWidth: 158,
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
                  FeatureItem(
                    title: 'Pencil to Photo',
                    subtitle: 'Drawing to realistic',
                    imagePath: '',
                  ),
                  FeatureItem(
                    title: 'Voice Presenter',
                    subtitle: 'Chic presenter style',
                    imagePath: '',
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 32),

            // Portrait & People kategorisi
            CategorySection(
              cardWidth: 155,
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
                  FeatureItem(
                    title: 'Mountain Climber',
                    subtitle: 'Adventure outdoor scene',
                    imagePath: '',
                  ),
                  FeatureItem(
                    title: 'Anime Cosplay',
                    subtitle: 'Anime character style',
                    imagePath: '',
                  ),
                  FeatureItem(
                    title: 'Warrior',
                    subtitle: 'Fantasy warrior look',
                    imagePath: '',
                  ),
                  FeatureItem(
                    title: 'Troll Character',
                    subtitle: 'Humorous character',
                    imagePath: '',
                  ),
                  FeatureItem(
                    title: 'Business Professional',
                    subtitle: 'Corporate headshot',
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
                  FeatureItem(
                    title: 'Sweatshirt',
                    subtitle: 'Fashion product shot',
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
                  FeatureItem(
                    title: 'Times Square',
                    subtitle: 'New York city vibes',
                    imagePath: '',
                  ),
                  FeatureItem(
                    title: 'Mount Rushmore',
                    subtitle: 'Historic monument scene',
                    imagePath: '',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
