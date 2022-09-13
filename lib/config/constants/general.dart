import 'package:flutter/material.dart';

/// Sets the default padding values to be used within the Project.
///
/// {@category Config}
/// {@subCategory Constants}
class AppPadding {
  AppPadding._();

  /// Extra Small padding - 12
  static const double xs = 12;

  /// Small padding - 16
  static const double sm = 16;

  /// Medium padding - 24
  static const double md = 24;

  /// Large padding - 32
  static const double lg = 32;

  /// Extra Large padding - 44
  static const double xl = 44;
}

/// Sets the default border radius values to be used within the Project.
///
/// {@category Config}
/// {@subCategory Constants}
class AppRadius {
  AppRadius._();

  /// Extra Small radius
  static const Radius xs = Radius.circular(4);

  /// Small radius
  static const Radius sm = Radius.circular(6);

  /// Medium radius
  static const Radius md = Radius.circular(16);

  /// Large radius
  static const Radius lg = Radius.circular(20);

  /// X-Large radius
  static const Radius xl = Radius.circular(24);
}
