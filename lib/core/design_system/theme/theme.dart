import 'package:flutter/material.dart';
import 'package:spase_explorer/core/design_system/design_system.dart';

class SpaseTheme {
  final TextTheme textTheme;

  const SpaseTheme(this.textTheme);

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: SpaceColors.primary,
      surfaceTint: SpaceColors.primary,
      onPrimary: SpaceColors.onPrimary,
      primaryContainer: SpaceColors.primaryContainer,
      onPrimaryContainer: SpaceColors.onPrimaryContainer,
      secondary: SpaceColors.secondary,
      onSecondary: SpaceColors.onSecondary,
      secondaryContainer: SpaceColors.secondaryContainer,
      onSecondaryContainer: SpaceColors.onSecondaryContainer,
      tertiary: SpaceColors.tertiary,
      onTertiary: SpaceColors.onTertiary,
      tertiaryContainer: SpaceColors.tertiaryContainer,
      onTertiaryContainer: SpaceColors.onTertiaryContainer,
      error: SpaceColors.error,
      onError: SpaceColors.onError,
      errorContainer: SpaceColors.errorContainer,
      onErrorContainer: SpaceColors.onErrorContainer,
      surface: SpaceColors.surface,
      onSurface: SpaceColors.onSurface,
      onSurfaceVariant: SpaceColors.onSurfaceVariant,
      outline: SpaceColors.outline,
      outlineVariant: SpaceColors.outlineVariant,
      shadow: SpaceColors.shadow,
      scrim: SpaceColors.scrim,
      inverseSurface: SpaceColors.inverseSurface,
      inversePrimary: SpaceColors.inversePrimary,
      primaryFixed: SpaceColors.primaryFixed,
      onPrimaryFixed: SpaceColors.onPrimaryFixed,
      primaryFixedDim: SpaceColors.primaryFixedDim,
      onPrimaryFixedVariant: SpaceColors.onPrimaryFixedVariant,
      secondaryFixed: SpaceColors.secondaryFixed,
      onSecondaryFixed: SpaceColors.onSecondaryFixed,
      secondaryFixedDim: SpaceColors.secondaryFixedDim,
      onSecondaryFixedVariant: SpaceColors.onSecondaryFixedVariant,
      tertiaryFixed: SpaceColors.tertiaryFixed,
      onTertiaryFixed: SpaceColors.onTertiaryFixed,
      tertiaryFixedDim: SpaceColors.tertiaryFixedDim,
      onTertiaryFixedVariant: SpaceColors.onTertiaryFixedVariant,
      surfaceDim: SpaceColors.surfaceDim,
      surfaceBright: SpaceColors.surfaceBright,
      surfaceContainerLowest: SpaceColors.surfaceContainerLowest,
      surfaceContainerLow: SpaceColors.surfaceContainerLow,
      surfaceContainer: SpaceColors.surfaceContainer,
      surfaceContainerHigh: SpaceColors.surfaceContainerHigh,
      surfaceContainerHighest: SpaceColors.surfaceContainerHighest,
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
