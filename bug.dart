```dart
class MyClass {
  final String name;
  MyClass(this.name);
}

void main() {
  final myList = <MyClass>[];
  myList.add(MyClass('Object 1'));
  myList.add(MyClass('Object 2'));

  // Trying to access a property of a null object
  final name = myList[10]?.name; 
  print(name); // This will print null

  //The error occurs here because we are trying to access the name property of an object that is not initialized.
  final name2 = myList[10].name;
  print(name2); // This will throw an error: RangeError (index): Invalid value: Valid value range is empty: 0
}
```