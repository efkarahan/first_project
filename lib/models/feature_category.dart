/// AI özellik kategorisi
class FeatureCategory {
  final String title;
  final List<FeatureItem> items;

  FeatureCategory({
    required this.title,
    required this.items,
  });
}

/// Tekil özellik kartı
class FeatureItem {
  final String title;
  final String subtitle;
  final String imagePath;
  final bool alignTop; // Görseli üstten mi göster?

  FeatureItem({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    this.alignTop = false, // Varsayılan: ortadan göster
  });
}

