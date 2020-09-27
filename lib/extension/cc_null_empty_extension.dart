extension MapNullOrEmpty on Map {
  bool get isNullOrEmpty => (this == null || this.isEmpty);
}

extension IterableExtension on Iterable {
  bool get isNullOrEmpty => (this == null || this.isEmpty);
}

extension StringExtension on String {
  bool get isNullOrEmpty => (this == null || this.isEmpty);
}
