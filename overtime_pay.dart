class Student {
  const Student(this.firstName, this.lastName, this.grade);

  final String firstName;
  final String lastName;
  final int grade;

  @override
  String toString() {
    // TODO: implement toString
    return '$firstName $lastName: $grade';
  }
}

class Sphere {
  const Sphere({required double radius})
      : assert(radius > 0),
        _radius = radius;
  final double _radius;
  static const pi = 3.14;

  double get surface => 4 * pi * _radius * _radius;
  double get volume => 4 / 3 * pi * _radius * _radius * _radius;
}

class Person {
  const Person({required this.overtime});
  final int overtime;
}

class Manager extends Person {
  const Manager({required int overtime}) : super(overtime: overtime);

  double get overtimePay => overtime * 3.5;
}

class Developer extends Person {
  const Developer({required int overtime}) : super(overtime: overtime);

  double get overtimePay => overtime * 2;
}

void main() {
  final quanLy = Manager(overtime: 2);
  final dev = Developer(overtime: 2);
  print(quanLy.overtimePay);
  print(dev.overtimePay);
}
