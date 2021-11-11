import 'dart:math';

void main() {
  Friend friend1 = Friend(38, 'Julien');
  Friend friend2 = Friend(25, 'Alexis');
  print(friend1);
}

class Friend {
  num age;
  String prenom;

  Friend(this.age, this.prenom);

  @override
  String toString() {
    // TODO: implement toString
    return '${this.age}, ${this.prenom}';
  }
}
