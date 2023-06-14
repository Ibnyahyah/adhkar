class Adhkar {
  final String id;
  final String title;
  final List<AdhkarData> adhkars;

  Adhkar({
    required this.id,
    required this.title,
    required this.adhkars,
  });
}

class AdhkarData {
  final String arabicText;
  final String transliterationText;
  final String translationText;
  final String URLReference;

  AdhkarData({
    required this.arabicText,
    required this.translationText,
    required this.transliterationText,
    this.URLReference = "",
  });
}
