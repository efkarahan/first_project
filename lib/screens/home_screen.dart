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
                    imagePath: 'assets/images/photo_editing/photo_restore.jpg',
                  ),
                  FeatureItem(
                    title: 'Black & White',
                    subtitle: 'Vintage style conversion',
                    imagePath: 'assets/images/photo_editing/black_white.jpg',
                  ),
                  FeatureItem(
                    title: 'Color Enhance',
                    subtitle: 'Vibrant color boost',
                    imagePath: 'assets/images/photo_editing/color_enhance.jpg',
                  ),
                  FeatureItem(
                    title: 'Remove Background',
                    subtitle: 'Background removal',
                    imagePath: 'assets/images/photo_editing/remove_background.jpg',
                  ),
                  FeatureItem(
                    title: 'Remove Person',
                    subtitle: 'Object removal tool',
                    imagePath: 'assets/images/photo_editing/remove_person.jpg',
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
                    imagePath: 'assets/images/creative_art/action_figure.jpg',
                    alignTop: true, // Üstten göster (kafa görünsün)
                  ),
                  FeatureItem(
                    title: 'Change Outfit',
                    subtitle: 'Outfit change style',
                    imagePath: 'assets/images/creative_art/change_outfit.jpg',
                  ),
                  FeatureItem(
                    title: 'Pencil to Photo',
                    subtitle: 'Drawing to realistic',
                    imagePath: 'assets/images/creative_art/pencil_to_photo.jpg',
                  ),
                  FeatureItem(
                    title: 'Voice Presenter',
                    subtitle: 'Chic presenter style',
                    imagePath: 'assets/images/creative_art/voice_presenter.jpg',
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 32),

            // Portrait & People kategorisi
            CategorySection(
              cardWidth: 158,
              category: FeatureCategory(
                title: 'Portrait & People',
                items: [
                  FeatureItem(
                    title: 'Superhero',
                    subtitle: 'Hero costume style',
                    imagePath: 'assets/images/portrait_people/superhero.jpg',
                  ),
                  FeatureItem(
                    title: 'Funny Face',
                    subtitle: 'Humorous expression',
                    imagePath: 'assets/images/portrait_people/funny_face.jpg',
                  ),
                  FeatureItem(
                    title: 'Mountain Climber',
                    subtitle: 'Adventure outdoor scene',
                    imagePath: 'assets/images/portrait_people/mountain_climber.jpg',
                  ),
                  FeatureItem(
                    title: 'Anime Cosplay',
                    subtitle: 'Anime character style',
                    imagePath: 'assets/images/portrait_people/anime_cosplay.jpg',
                  ),
                  FeatureItem(
                    title: 'Warrior',
                    subtitle: 'Fantasy warrior look',
                    imagePath: 'assets/images/portrait_people/warrior.jpg',
                  ),
                  FeatureItem(
                    title: 'Troll Character',
                    subtitle: 'Humorous character',
                    imagePath: 'assets/images/portrait_people/troll_character.jpg',
                  ),
                  FeatureItem(
                    title: 'Business Professional',
                    subtitle: 'Corporate headshot',
                    imagePath: 'assets/images/portrait_people/business_professional.jpg',
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 32),

            // Product & Brand kategorisi
            CategorySection(
              cardWidth: 158,
              category: FeatureCategory(
                title: 'Product & Brand',
                items: [
                  FeatureItem(
                    title: 'Product Ads',
                    subtitle: 'Advertisement style',
                    imagePath: 'assets/images/product_brand/product_ads.jpg',
                  ),
                  FeatureItem(
                    title: 'Product Demo',
                    subtitle: 'User demonstration',
                    imagePath: 'assets/images/product_brand/product_demo.jpg',
                  ),
                  FeatureItem(
                    title: 'Sweatshirt',
                    subtitle: 'Fashion product shot',
                    imagePath: 'assets/images/product_brand/sweatshirt.jpg',
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 32),

            // Interior Design kategorisi
            CategorySection(
              cardWidth: 158,
              category: FeatureCategory(
                title: 'Interior Design',
                items: [
                  FeatureItem(
                    title: 'Room Redesign',
                    subtitle: 'Interior makeover',
                    imagePath: 'assets/images/interior_design/room_redesing.jpg',
                  ),
                  FeatureItem(
                    title: 'Room Restyle',
                    subtitle: 'Room transformation',
                    imagePath: 'assets/images/interior_design/room_restyle.jpg',
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 32),

            // Travel Places kategorisi
            CategorySection(
              cardWidth: 158,
              category: FeatureCategory(
                title: 'Travel & Places',
                items: [
                  FeatureItem(
                    title: 'Paris Cafe',
                    subtitle: 'Iconic Eiffel Tower scene',
                    imagePath: 'assets/images/travel_places/paris_cafe.jpg',
                  ),
                  FeatureItem(
                    title: 'Eiffel Front',
                    subtitle: 'Front view with Eiffel Tower',
                    imagePath: 'assets/images/travel_places/eiffel_front.jpg',
                  ),
                  FeatureItem(
                    title: 'Times Square',
                    subtitle: 'New York city vibes',
                    imagePath: 'assets/images/travel_places/times_square.jpg',
                  ),
                  FeatureItem(
                    title: 'Mount Rushmore',
                    subtitle: 'Historic monument scene',
                    imagePath: 'assets/images/travel_places/mount_rushmore.jpg',
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
