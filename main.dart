import 'dart:io';
import 'dart:math' show sqrt;

int readInt() {
  //in Dart 3 there is a feature Added Called Null Safety which
  // is used to guarantee that the input won't Be Null So you need
  // just add a '!' in Your 'stdin.readLineSync()' and You are done Here is The Code 
  String input = stdin.readLineSync()!;
  return int.parse(input);
}

main() {

  print("A quadratic equation is something of the form `a⋅x² + b⋅x + c = 0`.");
  print("input 3 numbers, pressing enter after each, signifying your coefficient values for a, b and c respectively");
  int A, B, C;
  try {
    A = readInt();
    B = readInt();
    C = readInt();
  }
  on FormatException {
    print("Coefficient is not a number.");
    return;
  }
  if (A == 0) {
    print("Not a quadratic equation.");
    return;
  }

  print("your equation is: ${A}x² + ${B}x + ${C} = 0");
  int D = B * B - 4 * A * C;
  double p1 = - B / 2.0 / A;
  double p2 = sqrt(D.abs()) / 2.0 / A;
  print("Its roots are:");
  if (D == 0) {
    print("x = $p1");
  } else {
    if (D > 0) {
      print("x1 = ${p1 + p2}");
      print("x2 = ${p1 - p2}");
    } else {
      print("x1 = ($p1, $p2)");
      print("x2 = ($p1, ${-p2})");
    }
  }
}