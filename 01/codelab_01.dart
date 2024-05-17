import 'dart:math';

//Codelab 01
// Osmin Mendoza Sevilla
/*******************************************************************************************************************/

class Bycicle {
  int cadence;
  int _speed = 0;
  int gear;

  //getter
  int get speed => _speed;

  Bycicle(this.cadence, this.gear);

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bycicle: $_speed mph';
}

class Rectangle {
  Point origin;
  int width;
  int height;

  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});

  @override
  String toString() =>
      "Origin(${origin.x}, ${origin.y}), width: $width, height: $height";
}

//Create a factory
abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can´t create $type';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

class CircleMock implements Circle {
  late num area;
  late num radius;
}

/*Shape shapeFactory(String type){
  if(type == 'circle') return Circle(2);
  if(type == 'square') return Square(2);
  throw 'Can´t create $type';
}*/

String scream(int length) => "A${'a' * length}h!";

void main() {
  /*var bike = Bycicle(2,1);
  print(bike);
  bike.speedUp(3);
  print(bike);
  bike.applyBrake(1);
  print(bike);*/

  /*print(Rectangle(origin: const Point(10,20), width: 100, height: 200));
  print(Rectangle(origin: const Point(10,10)));
  print(Rectangle(width:200));
  print(Rectangle());*/

  //factories
  /*final circle = Shape('circle');
  final square = Shape('square');
  print(circle.area);
  print(square.area);*/

  //lambdas
  /*final values = [1,2,3,5,10,50];
  for(var length in values){
    print(scream(length));
  }*/

  //convert imperative code to functional
  final values = [1, 2, 3, 5, 10, 50];
  //values.map(scream).forEach(print);

  //other iterable features
  values.skip(1).take(3).map(scream).forEach(print);
}
