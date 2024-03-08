extension StringExtension on String {
  String toTitleCase() {
    return split(' ')
        .map((word) => word.isEmpty
            ? ''
            : word[0].toUpperCase() + word.substring(1).toLowerCase())
        .join(' ');
  }

  bool isEmptyOrWhitespace() {
    return trim().isEmpty;
  }

  String reverse() {
    return split('').reversed.join();
  }

  String capitalizeFirstLetter() {
    if (isEmpty) {
      return '';
    }
    return this[0].toUpperCase() + substring(1);
  }

  bool containsSubstring(String substring) {
    return contains(substring);
  }

  List<String> toLines() {
    return split('\n');
  }

  String removeWhitespace() {
    return replaceAll(RegExp(r'\s+'), '');
  }

  int countWords() {
    return isEmpty ? 0 : trim().split(RegExp(r'\s+')).length;
  }

  String truncate(int maxLength, {String ellipsis = '...'}) {
    if (length <= maxLength) {
      return this;
    }
    return '${substring(0, maxLength)}$ellipsis';
  }

  bool isOnlyDigits() {
    RegExp numeric = RegExp(r'^[0-9]+$');
    return numeric.hasMatch(this);
  }
}
