import 'package:flutter/material.dart';
import 'package:spase_explorer/core/design_system/design_system.dart';

class SpaseTheme {
  final TextTheme textTheme;

  const SpaseTheme(this.textTheme);

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: SpaseColors.primary,
      surfaceTint: SpaseColors.primary,
      onPrimary: SpaseColors.onPrimary,
      primaryContainer: SpaseColors.primaryContainer,
      onPrimaryContainer: SpaseColors.onPrimaryContainer,
      secondary: SpaseColors.secondary,
      onSecondary: SpaseColors.onSecondary,
      secondaryContainer: SpaseColors.secondaryContainer,
      onSecondaryContainer: SpaseColors.onSecondaryContainer,
      tertiary: SpaseColors.tertiary,
      onTertiary: SpaseColors.onTertiary,
      tertiaryContainer: SpaseColors.tertiaryContainer,
      onTertiaryContainer: SpaseColors.onTertiaryContainer,
      error: SpaseColors.error,
      onError: SpaseColors.onError,
      errorContainer: SpaseColors.errorContainer,
      onErrorContainer: SpaseColors.onErrorContainer,
      surface: SpaseColors.surface,
      onSurface: SpaseColors.onSurface,
      onSurfaceVariant: SpaseColors.onSurfaceVariant,
      outline: SpaseColors.outline,
      outlineVariant: SpaseColors.outlineVariant,
      shadow: SpaseColors.shadow,
      scrim: SpaseColors.scrim,
      inverseSurface: SpaseColors.inverseSurface,
      inversePrimary: SpaseColors.inversePrimary,
      primaryFixed: SpaseColors.primaryFixed,
      onPrimaryFixed: SpaseColors.onPrimaryFixed,
      primaryFixedDim: SpaseColors.primaryFixedDim,
      onPrimaryFixedVariant: SpaseColors.onPrimaryFixedVariant,
      secondaryFixed: SpaseColors.secondaryFixed,
      onSecondaryFixed: SpaseColors.onSecondaryFixed,
      secondaryFixedDim: SpaseColors.secondaryFixedDim,
      onSecondaryFixedVariant: SpaseColors.onSecondaryFixedVariant,
      tertiaryFixed: SpaseColors.tertiaryFixed,
      onTertiaryFixed: SpaseColors.onTertiaryFixed,
      tertiaryFixedDim: SpaseColors.tertiaryFixedDim,
      onTertiaryFixedVariant: SpaseColors.onTertiaryFixedVariant,
      surfaceDim: SpaseColors.surfaceDim,
      surfaceBright: SpaseColors.surfaceBright,
      surfaceContainerLowest: SpaseColors.surfaceContainerLowest,
      surfaceContainerLow: SpaseColors.surfaceContainerLow,
      surfaceContainer: SpaseColors.surfaceContainer,
      surfaceContainerHigh: SpaseColors.surfaceContainerHigh,
      surfaceContainerHighest: SpaseColors.surfaceContainerHighest,
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );
}
