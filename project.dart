// void main(List<String> args) {
//   // Map-in açarlary String, bahalary bolsa Map<String, String>
//   Map<String, Map<String, String>> people = {
//     "Aman": {"age": "20"},
//     "Ysmayyl": {"age": "16"},
//     "Wepa": {"age": "17"},
//     "SHanazar": {"age": "24"},
//     "Hudayyar": {"age": "21"},
//   };

//   // String görnüşindäki ýaş maglumatlaryny integer görnüşine öwürmek
//   people.forEach((name, details) {
//     // Her adam üçin ýaşy int.parse bilen integer görnüşine öwürýäris
//     details['age'] = int.parse(details['age']!).toString();
//   });

//   // Netijäni çap etmek
//   people.forEach((name, details) {
//     print('Ady: $name, Ýaşy: ${details['age']}');
//   });
// }

// void main(List<String> args) {
//   // Map-in açarlary String, bahalary bolsa Map<String, String>
//   Map<String, Map<String, String>> people = {
//     "aman": {"age": "20"},
//     "Ysmayyl": {"age": "16"},
//     "Wepa": {"age": "17"},
//     "SHanazar": {"age": "24"},
//     "hudayyar": {"age": "21"},
//   };

//   // Baş harp bilen ady düzeltmek üçin funksiýa
//   String capitalize(String name) {
//     if (name.isEmpty) return name;
//     return name[0].toUpperCase() + name.substring(1).toLowerCase();
//   }

//   // String görnüşindäki ýaş maglumatlaryny integer görnüşine öwürmek
//   people.forEach((name, details) {
//     // Her adam üçin ýaşy int.parse bilen integer görnüşine öwürýäris
//     details['age'] = int.parse(details['age']!).toString();
//   });

//   // Ady baş harp bilen ýazylyş görnüşinde çap etmek
//   people.forEach((name, details) {
//     print('Ady: ${capitalize(name)}, Ýaşy: ${details['age']}');
//   });
// }

void main(List<String> args) {
  // Map-in açarlary String, bahalary bolsa Map<String, String>
  Map<String, Map<String, String>> people = {
    "aman": {"age": "20"},
    "ysmayyl": {"age": "16"},
    "wepa": {"age": "17"},
    "shanazar": {"age": "24"},
    "hudayyar": {"age": "21"},
  };

  // Ady tutuşlygyna uly harp bilen ýazmak
  String capitalizeFull(String name) {
    return name.toUpperCase();
  }

  // String görnüşindäki ýaş maglumatlaryny integer görnüşine öwürmek
  people.forEach((name, details) {
    // Her adam üçin ýaşy int.parse bilen integer görnüşine öwürýäris
    details['age'] = int.parse(details['age']!).toString();
  });

  // Ady tutuşlygyna uly harp bilen çap etmek
  people.forEach((name, details) {
    print('Ady: ${capitalizeFull(name)}, Ýaşy: ${details['age']}');
  });
}
