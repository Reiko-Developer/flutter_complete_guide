class Person {
  var name;

  Person(name) {
    this.name = name;
  }

  init({name}) {
    this.name = name;
  }
}

void main() {
  Person p = Person('José');

  print(p.name);
}
