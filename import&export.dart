// importer librairie
import 'dart:math' 
// librairie non native
import 'package:test/test.dart';
// as permet de renommer, notemment pour les conflits de nom
import 'package:lib1/lib1.dart';
  import 'package:lib2/lib2.dart' as lib2;
    // Utiliser la classe Moteur de la lib1 :
  Moteur instance1 = Moteur();
  
  // Utiliser la classe Moteur de la lib2 :
  lib2.Moteur instance2 = lib2.Moteur();

// show et hide pour import partiels
// Importe SEULEMENT pi
  import 'package:lib1/lib1.dart' show pi;
  
  // Tout importer SAUF pi
  import 'package:lib2/lib2.dart' hide pi;

// encapsulation : appeler autre fichier dart
 import 'fonction.dart'

 // export librairie
  export 'tests/test1.dart';
  export 'tests/test2.dart';
  export 'tests/test3.dart';

  



