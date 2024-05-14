extension JsonMapExtension on Map<String, dynamic> {
  T get<T>(String key) {
    if (!containsKey(key)) throw Exception('No such key in json');

    final value = this[key];

    if (value is! T) throw Exception('Wrong key type');

    return value;
  }

  T? getOrNull<T>(String key) {
    if (!containsKey(key)) return null;

    final value = this[key];

    if (value is! T) return null;

    return value;
  }

  T getOrDefault<T>(String key, T defaultValue) {
    if (!containsKey(key)) return defaultValue;

    final value = this[key];

    if (value is! T) return defaultValue;

    return value;
  }
}
