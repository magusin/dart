// async await
// Il est possible d'utiliser await sur un Future pour attendre la fin de son exécution.
// L'utilisation est la même qu'en JavaScript / TypeScript, à savoir qu'il n'est possible d'utiliser await que dans une fonction async.

Future attendreActionAsynchrone() async {
  valeur = await actionAsynchrone();
  // faire quelque chose avec valeur
}

// Aussi bien la fonction main() :
Future main() async {
  await actionAsynchrone();
}

// Que des fonctions fléchées :
Future actionAsynchrone() async => ...;

// De même qu'en JavaScript, la gestion d'erreur des fonctions asynchrones se fait avec des blocs try / catch, et éventuellement avec finally.
try {
  valeur = await actionAsynchrone();
} catch (e) {
  print(e);
}

// Dart offre une API pour manipuler les Future autrement qu'avec async / await.
// Il faut privilégier l'utilisation d'async / await qui est plus lisible
// then() permet de prendre en argument une fonction qui reçoit la valeur retournée par le Futur et qui sera exécutée quand le Futur aura terminé son exécution.
// catchError() prend en paramètre une fonction qui reçoit l'erreur en argument et qui sera exécutée dans le cas où l'exécution du Future rencontre une erreur,.
// Future<T>.delayed(periode) permet de créer un Future qui s'exécutera après une période passé en argument.

main2() {
  actionAsync()
    .then((value) => print(value))
    .catchError((error) => print('Erreur'));
  print('Valeur synchrone');
}
 
Future<String> actionAsync() {
  return Future<String>.delayed(Duration(milliseconds: 2000),() => "Valeur asynchrone");
}