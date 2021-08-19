import 'location_fact.dart';

class Location {

  final int id;
  final String name;
  final String imagePath;
  final List<LocationFact> fact;

  Location(this.id, this.name, this.imagePath, this.fact);


  static Location? fetchById(int locationID) {
    List<Location> locations = Location.fetchAll();
    for (int i=0; i<locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }

  static List<Location> fetchAll() {
    return [
      Location(1, "Arashiyama Bamboo Grove", "assets/images/kiyomizu-dera.jpg",
          // location fact
        [
          LocationFact("Summary", "While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm."),
          LocationFact("How to get there", "Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.")
        ]
      ),
      Location(2, "Mount Fuji", "assets/images/mount-fuji.jpg",
        [
          // LocationFact("Summary", "A vast expanse of grey rectangular boxes — mostly low rise, in deference to the ever-present threat in Japan of catastrophic earthquake — stretches to the horizon, interwoven with a tangled web of power and communications cabling. There is great beauty in Tokyo, but as in much of Japan you find it at street level, and in small, simple things. If your room with a Tokyo view faces west, though, and the day dawns bright and clear, you may be greeted by the wonderful sight of Japan’s sacred mountain, Fuji, glowing in the distance, about 100km from the city."),
          LocationFact("Summary", "A vast expanse of grey rectangular boxes — mostly low rise, in deference to the ever-present threat in Japan of catastrophic earthquake — stretches to the horizon, interwoven with a tangled web of power and communications cabling. There is great beauty in Tokyo, but as in much of Japan you find it at street level, and in small, simple things. If your room with a Tokyo view faces west, though, and the day dawns bright and clear"),
          LocationFact("11 thing to know about Mt Fuji", "CLIMB THAT MOUNTAIN")
        ]
      )
    ];
  }
}