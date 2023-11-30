/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/errorhandling_safe_array_element_parsing_base.dart';

/*
Practice Question 1: Safe Array Element Parsing

Task:

Given an array of strings, try to parse each element as an integer using int.parse.

Handle any format exceptions that occur during parsing, and for each exception, print a custom error message.

Example Array:

final strings = ['123', 'abc', '456', 'def', '789'];
 */

void parseArrayElements(List<String> x) {
  try {
    for (var indivString in x) {
      print(int.parse(indivString));
    }
  } on FormatException catch (e) {
    print("Error parsing: $e");
  }
}

void main(){
  parseArrayElements(['123', 'abc', '456', 'def', '789']);
}
