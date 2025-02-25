import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme createTextTheme(BuildContext context) {
  final baseTextTheme = Theme.of(context).textTheme;
  final bodyTextTheme = GoogleFonts.getTextTheme('Archivo', baseTextTheme);
  final displayTextTheme = GoogleFonts.getTextTheme('Archivo', baseTextTheme);
  final textTheme = displayTextTheme.copyWith(
    bodyLarge: bodyTextTheme.bodyLarge,
    bodyMedium: bodyTextTheme.bodyMedium,
    bodySmall: bodyTextTheme.bodySmall,
    labelLarge: bodyTextTheme.labelLarge,
    labelMedium: bodyTextTheme.labelMedium,
    labelSmall: bodyTextTheme.labelSmall,
  );
  return textTheme;
}
