extension StringX on String {
  String get mobNumberInReadableFormat => '${substring(0, 5)} ${substring(5)}';
}