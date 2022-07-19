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
