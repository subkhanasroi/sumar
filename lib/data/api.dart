const String _baseUrl = "https://zoo-animal-api.herokuapp.com";

class API {
  _Sumar sumar = _Sumar();
}

class _Sumar {
  _Animal animal = _Animal();
  final String baseUrlSumar = _baseUrl;
}

class _Animal {
  final String animalRandom = "$_baseUrl/animals/rand";
}
