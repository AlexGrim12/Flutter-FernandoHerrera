void main() {
  final mySquare = Square(side: -10);
  // mySquare.side = -10;
  print('Area: ${mySquare.area}');
}

class Square {
  double _side; //side * side
  Square({required double side})
      : assert(side >= 0, 'side must be >= 0'),
        _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('Setting new value $value');
    if (value < 0) {
      throw 'Value must be >=0';
    }
    _side = value;
  }

  double calcularArea() {
    return _side * _side;
  }
}
