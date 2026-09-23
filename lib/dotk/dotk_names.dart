/// The chain stores the bare name, like `kaspa`, and the `.k` suffix is added
/// for display. Wallet input is the exception: the suffix is required there,
/// because the same field also takes addresses and `@contacts`.
///
/// A target is what the field resolves: a name like kaspa.k, or a subname like
/// bob.alice.k, which is one label under a name. Normalizing drops the suffix,
/// leaving kaspa and bob.alice.
class DotkName {
  static const suffix = '.k';

  static const maxLength = 32;

  /// The most bytes a subname label holds, its dots included.
  static const labelMaxLength = 64;

  /// The suffix without its dot.
  static final suffixSegment = suffix.substring(1);

  static bool isValid(String bare) {
    if (bare.isEmpty || bare.length > maxLength) {
      return false;
    }
    if (bare.startsWith('-') || bare.endsWith('-')) {
      return false;
    }
    for (final unit in bare.codeUnits) {
      final allowed =
          (unit >= 0x61 && unit <= 0x7a) || // a-z
          (unit >= 0x30 && unit <= 0x39) || // 0-9
          unit == 0x2d; // -
      if (!allowed) {
        return false;
      }
    }
    return true;
  }

  /// A label is dot-separated segments, like `dev.team`. A segment cannot be `k`,
  /// the display suffix, to avoid confusion.
  static bool isValidLabel(String label) {
    if (label.length > labelMaxLength) {
      return false;
    }
    for (final segment in label.split('.')) {
      if (!isValid(segment) || segment == suffixSegment) {
        return false;
      }
    }
    return true;
  }

  static String? tryNormalize(String text) {
    final folded = text.trim().toLowerCase();
    if (!folded.endsWith(suffix)) {
      return null;
    }
    final target = folded.substring(0, folded.length - suffix.length);

    final (parent, label) = splitTarget(target);
    if (!isValid(parent)) {
      return null;
    }
    if (label == null) {
      // No label, so nothing was stripped off a parent: `k.k` is the name `k`
      return target;
    }

    return parent != suffixSegment && isValidLabel(label) ? target : null;
  }

  /// Splits `bob.alice` into the name `alice` and the label `bob`. A plain name
  /// has no label. The split is at the last dot, because a label can contain
  /// dots and a name cannot.
  static (String parent, String? label) splitTarget(String target) {
    final dot = target.lastIndexOf('.');

    return dot < 0
        ? (target, null)
        : (target.substring(dot + 1), target.substring(0, dot));
  }

  static bool isName(String text) => tryNormalize(text) != null;

  static String display(String target) => '$target$suffix';

  static int displayOrder(String a, String b) {
    final byLength = a.length.compareTo(b.length);

    return byLength != 0 ? byLength : a.compareTo(b);
  }
}
