import 'country.dart';
import 'Problem.dart';
class City extends Country with Problem {
  City() : super("Tokyo", "Shiba");

  void callSuper() {
    print("Capital : " + super.city);
    super.callHello();
  }

  @override
  String callAnimal() {
    return "Shiba";
  }
}
