import 'dart:io';

void main() {
  print('What type of pizza do you want?');
  String? type = stdin.readLineSync();
  switch (type!.toLowerCase()) {
    case 'cheese':
      print('\$19.99');
      break;
    case 'pepperoni':
      print('\$21.99');
      break;
    case 'margherita':
      print('\$14.99');
      break;
    case 'hawaiian':
      print('\$25.99');
      break;
    case 'meat':
      print('\$17.99');
      break;
    default:
      print('Sorry, we don\'t have that type of pizza.');
  }
}
