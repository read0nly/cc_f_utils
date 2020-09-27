extension MapNullOrEmpty on Map {
  bool get ccIsNullOrEmpty => (this == null || this.isEmpty);
}

extension IterableExtension on Iterable {
  bool get ccIsNullOrEmpty => (this == null || this.isEmpty);
}

extension StringExtension on String {
  bool get ccIsNullOrEmpty => (this == null || this.isEmpty);
}
