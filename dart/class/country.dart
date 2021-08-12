class Country {
  var country = "Japan";
  var city;
  var _animal = "Wolf";

  Country(this.city, this._animal);
  Country.japan(String city, String animal) : this(city, animal);
  void callHello() {
    print("Hello");
  }

  String callAnimal() {
    return this._animal;
  }
  
}
