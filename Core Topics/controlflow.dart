void controlflow() {
  // dart control flow statements: if-else
  var year = 2000;
  if (year % 4 == 0) {
    print('$year is a leap year.');
  } else {
    print('$year is not a leap year.');
  }

  var ObjectArray = [1, 'two', 3.0, true];

  // dart control flow statements: for loop
  for (var element in ObjectArray) {
    print('Element: $element');
  }

  // dart control flow statements: for loop with index
  for (var i = 0; i < ObjectArray.length; i++) {
    print('Index $i: ${ObjectArray[i]}');
  }

  // dart control flow statements: while loop
  var count = 0;
  while (count < 5) {
    print('Count: $count');
    count++;
  }

  // dart control flow statements: do-while loop
  var num = 0;
  do {
    print('Number: $num');
    num++;
  } while (num < 3);

  // dart control flow statements: for loop with StringBuffer
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  print(message);
}
