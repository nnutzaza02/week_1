import 'city.dart';
import 'country.dart';

void main() {
  print("HELLO WORLD");

  //Country item = new Country.japan("Tokyo", "Shiba");
  //print("Welcome to " + item.country);
  //item.callHello();
  //print("Capital : " + item.city);
  //print("national Animal" + item.callAnimal());
  //print("national Color " + Country.color );

  var order = City();
  print("Welcome to " + order.country);
  order.callSuper();

  print(order.callAnimal());
  order.callProblem();
}
