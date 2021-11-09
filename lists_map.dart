main() {
  // définir une liste
  var list = [1, 2, 3];

  print(list);

  List list1 = [1, 2, 3];

  // Ajouter élément à la list
  list1.add('je suis une string');
  // Enlever élément à une list
  list1.remove(0);
  // longueur de la list
  print(list1.length);
  print(list1);

  // Comme en JavaScript depuis ES6, Dart permet d'utiliser l'opérateur spread pour copier facilement une list dans une autre list
  var maListe = [1, 2, 3];
  var maListe1 = [...maListe, 4, 5, 6];

  print(maListe1);

  var list2 = [1,2,1];

  // Ajouter une valeur à la fin de la List :
  list2.add(2); // ou -1
  
  // Enlever la première occurence d'une valeur spécifique d'une List :
  // Retourne true si un élément a été enlevé, false sinon.
  list2.remove(1);
  print(list2);
  
  // Enlever l'élément à l'index spécifié :
  list2.removeAt(0);
  print(list2);
 
  // Enlever tous les éléments de la List :
  list2.clear();
  print(list2);
  
  // Ajouter tous les éléments passés dans une list à la fin de la List :
  list2.addAll([1,2,3]);
  print(list2);
  
  // Retourne l'index de l'élément :
  print(list2.indexOf(1));
  
  // Retourne un booléen suivant que l'élément est dans la List ou non :
  print(list2.contains(22)); 


  // MAP

  var map = {
    'clé1': 'valeur1',
    'clé2': 'valeur2'
};

  // typer un map
Map<String, String> map1 = {'clé1': 'valeur1'};
Map<int, String> map2 = {1: 'valeur1'};
Map<String, double> map3 = {'clé3': 45.22};

   print(map1['clé1']); //  'valeur1'
print(map2[1]); //  'valeur1'
print(map3['clé3']); //  45.22

//Obtenir values, keys, entries d'un map
 var map4 = {
    'clé1': 'valeur1', 
    1: 'valeur2'
  };
	
  // La propriété entries permet d'obternir les paires clé/valeur :
  print(map4.entries);
  
  // La propriété values permet d'obtenir les valeurs :
  print(map4.values);
  
  // La propriété keys permet d'obtenir les clés :
  print(map4.keys.runtimeType);

  // Oppérateur spread pour map

   var map5 = {
    'clé1': 'valeur1', 
    1: 'valeur2'
  };
	
  var map6 = {
    ...map5,
    'clé3': 44.23
  };
  
  print(map6);

  // containsKey() permet de savoir si une clé existe :
  print(map6.containsKey('clé1'));
  
  // containsValue() permet de savoir si une valeur existe :
  print(map6.containsValue(1));
  
  // remove() permet de supprimer une paire clé/valeur :
  map6.remove('clé1');
  print(map6);
}
