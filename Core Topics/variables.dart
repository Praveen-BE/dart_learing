void Variables() {
  // Dart is a statically typed language,
  //also supports like dynamic typing like javascript

  /// var is used to declare a variable without specifying its data type,
  ///  Dart infers the data type based on the assigned value. Once assigned,
  /// the variable's data type cannot be changed.
  var name = "Voyager";
  var year = 1977;
  var antennaDieameter = 3.7;
  var flybyObjects = ["Jupiter", "Saturn", "Uranus", "Neptune"];
  var image = {
    "tags": ["saturen"],
    "url": "//paths/to/saturn.jpg",
  };

  name = "Voyager I";
  //   name = 123; // can't modify data type
  print(name);

  /// using Object type variable can
  ///  hold any data type and can be modified later
  Object modify = "A String";
  modify = 123; // can modify data type
  print(modify);

  String mission = "Voyager"; // we can also specify data type 'String'
  mission = "Voyager II";
  print(mission);

  String? nickName = null; // nullable variable
  print(nickName);
  nickName = "The Voyager";
  print(nickName);

  String nonNullable;
  nonNullable = "I can't be null";
  //   nonNullable = null; // error
  print(nonNullable);

  int? lineCount;
  print(lineCount == null); // true
  lineCount = 123;
  print(lineCount == null); // false

  late String description; // its non nullable but we will initialize later
  //   print(description); // error: not initialized
  void lateVariabaleUsed() {
    description = 'Feijoada!';
    print(description);
  }

  lateVariabaleUsed();

  String readThermometer() {
    print('Reading thermometer...');
    return '37°C';
  }

  // This is the program's only call to readThermometer().
  late String temperature =
      readThermometer(); // Lazily initialized. the function is
  //called only when the variable is used first time
  print('The temperature is $temperature.');

  String temperature2 = readThermometer(); // Eagerly initialized. the function
  //is called immediately even if the variable is not used
  print('The temperature is $temperature2.');

  // const - used to declare compile-time constants, whose values must be known at compile time and cannot be changed later.
  const pi = 3.14159;
  print(pi);

  // final - runtime constant, its value is assigned once at runtime and cannot be changed later.
  final currentTime = DateTime.now();
  print(currentTime);
  // const currentTime =
  //     DateTime.now(); // error: const value must be known at compile time
  // print(currentTime);

  final Map<String, String> capitals = {
    'USA': 'Washington, D.C.',
    'France': 'Paris',
    'Japan': 'Tokyo',
  };

  capitals['India'] = 'New Delhi'; // allowed, modifying the contents
  print(capitals);

  const Map<String, String> capitals2 = {
    'USA': 'Washington, D.C.',
    'France': 'Paris',
    'Japan': 'Tokyo',
  };
  // capitals2['India'] =
  ///     'New Delhi';
  /// error: cannot modify contents of const map
  /// Unhandled exception:Unsupported operation: Cannot modify unmodifiable map)
  print(capitals2);

  // wildcard variable
  wildcard() {
    var _ = 1;
    int _ = 2;
    print(
      "This is wild card variable You initialized it twice but not used it so no error",
    );
    // why this is useful?
    for (var _ in [1, 2, 3]) {
      print("Using wildcard variable in loop");
      // print("Using wildcard variable in loop value: $_");// error: can't use _ variable
    }

    try {
      throw '!';
    } catch (_) {
      print('oops'); // we did not care about the exception object so we used _
    }

    /// use here generic function with wildcard parapmeter
  }

  wildcard();

  // variables.dart

  void genericFunction<_>() {
    print("Hello from genericFunction!");
  }

  // Named generic function (inline generic lambdas are not allowed in Dart)
  bool alwaysTrue<_>() => true;

  // Function that takes a generic callback
  void takeGenericCallback(bool Function<T>() callback) {
    final resultInt = callback<int>();
    final resultString = callback<String>();
    print("Callback returned: $resultInt and $resultString");
  }

  // Wrap everything inside a function to avoid top-level issues
  void usingGenericFunction() {
    final obj = T();
    obj.sayHello();
    genericFunction();
    takeGenericCallback(alwaysTrue);
  }

  usingGenericFunction();
} // closing Variables function

// Generic examples with wildcard type parameter
// names it need to be written outside all function
class T<_> {
  void sayHello() => print("Hello from class T!");
}
