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

  FeatureItem({
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });
}

