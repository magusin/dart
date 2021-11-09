main() {
  bool test1 = false;
  bool test2 = true;

  if (test1) {
    print('Par là !');
  } else if (test2) {
    print('Ici !');
  } else {
    print('Là !');
  }

  // A noter qu'il n'y a pas de coercition contrairement au JavaScript. Cela signifie qu'une chaîne de caractères ne sera pas transformée en true par exemple, dans un contexte de test.
  String test3 = 'J\'existe !';
  bool test4 = true;

  // ne peut pas s'écrire
  //   if (test1) {} doit s'écrire:

  if (test3 != null) {
    print('Par là !'); // Par là !
  } else if (test4) {
    print('Ici !');
  } else {
    print('Là !');
  }

// le ternaire
int age = 17;
  
  bool isMajeur = age > 18 ? true : false;
  print(isMajeur);

  // boucle for

   for (int i = 0; i < 5; i++) {
    print('Hello ${i + 1}');
  }

  // for in

  List<int> liste1 = [1, 2, 3];
  int result = 0;
  
  for (var e in liste1) {
    result = result + e;
  }

  print(result); // 3 + 2 + 1 + 0, result 6

  // forEach

    List<int> liste = [1, 2, 3];
  int result1 = 0;
  
  liste.forEach((elem) => result1 = result1 + elem); 
  print(result1); // result 6

  // while

   List<int> liste5 = [1, 2, 3];
  
  while (liste5.length != 0) {
    print(liste5);
    liste5.removeLast();
  }
  
  print(liste5); // [1,2,3], [1,2], [1], []

  // do, while

   List<int> liste6 = [1, 2, 3];

  do {
    print(liste6);
    liste6.removeLast();
  } while (liste6.length != 0);
  
  print(liste6); // same

  // break et continue

    List<int> liste7 = [1, 2, 3];
  
  while (liste7.length != 0) {
    // Si la liste n'a plus qu'un élément nous stoppons la boucle :
    if (liste7.length == 1) break; 
    print(liste7);
    liste7.removeLast();
  }
  
  for (var i = 2; i < 10; i++) {
    // Nous sautons l'itération si i est pair :
    if (i % 2 == 0) continue; 
    // Donc seuls les éléments impairs sont ajoutés :
    liste7.add(i);
  }
  
  print(liste7);

  // le switch / case

   const int a = 3;
  switch (a) {
    case 1:
     print('Ici');
     break;
    case 2:
     print('là');
     break;
    default:
     print('LA !');
     break;
  }


}
