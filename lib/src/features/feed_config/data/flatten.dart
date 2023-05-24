extension Flatten on Map<String, dynamic> {
  /// This function takes a nested map as input and returns a new map where the
  /// keys are flattened using dot notation. For example, if the input map is
  /// `{'a': {'b': {'c': 1}}}`, the output will be `{'a.b.c': 1}`.
  Map<String, dynamic> flatten() {
    final result = <String, dynamic>{};

    void flatten(String key, dynamic value) {
      if (value is Map<String, dynamic>) {
        value.forEach((k, v) => flatten('$key.$k', v));
      } else {
        result[key] = value;
      }
    }

    forEach(flatten);
    return result;
  }

  Map<String, dynamic> unflatten() {
    final result = <String, dynamic>{};

    void unflatten(String key, dynamic value) {
      final keys = key.split('.');
      Map<String, dynamic> current = result;
      for (int i = 0; i < keys.length - 1; i++) {
        current = current.putIfAbsent(keys[i], () => <String, dynamic>{});
      }
      current[keys.last] = value;
    }

    forEach(unflatten);
    return result;
  }
}
