extension ccMapNullOrEmpty on Map {
  bool get ccIsNullOrEmpty => (this == null || this.isEmpty);
}

extension ccIterableExtension on Iterable {
  bool get ccIsNullOrEmpty => (this == null || this.isEmpty);
}

extension ccStringExtension on String {
  bool get ccIsNullOrEmpty => (this == null || this.isEmpty);
}
