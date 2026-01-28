// Estado => isDarkmodeProvider => bool

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:nueva_app/src/config/theme/app_theme.dart';

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

// Un simple boolean
final isDarkmodeProvider = StateProvider<bool>((ref) => false);

// Un simple entero
final selectedColorProvider = StateProvider<int>((ref) => 0);