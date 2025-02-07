```dart
class MyClass {
  final String name;
  MyClass(this.name);
}

void main() {
  final myList = <MyClass>[];
  myList.add(MyClass('Object 1'));
  myList.add(MyClass('Object 2'));

  // Safe way to access list elements
  final name = myList.length > 10 ? myList[10].name : null; 
  print(name); // Prints null

  //Alternative safe way to access list elements using null-aware operator
  final name2 = myList[10]?.name; //This will print null because the index is out of range
  print(name2); // Prints null

  //Another safer way to handle potential index out of bounds
  if(myList.length > 10){
    final name3 = myList[10].name;
    print(name3);
  } else{
    print('Index out of range');
  }
}
```