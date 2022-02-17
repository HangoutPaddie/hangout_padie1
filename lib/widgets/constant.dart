import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hangout_padie/model/cubana_menu.dart';
import 'package:hangout_padie/model/lagos_lounge.dart';

final Set<Marker> _kGoogleMarkers = {
  Marker(
    markerId: const MarkerId('Lagos Marker'),
    position: const LatLng(6.601328, 3.087240),
    infoWindow: const InfoWindow(
      title: 'Owode',
    ),
    icon: BitmapDescriptor.defaultMarkerWithHue(
      BitmapDescriptor.hueGreen,
    ),
  ),
  Marker(
    markerId: const MarkerId('Destination Marker'),
    position: const LatLng(6.4281, 3.4219),
    infoWindow: const InfoWindow(
      title: 'Gift Anita Street, Ayodeji',
    ),
    icon: BitmapDescriptor.defaultMarkerWithHue(
      BitmapDescriptor.hueOrange,
    ),
  ),
};

final List<LagosLounge> _cubanaList = [
  LagosLounge(
    loungeName: 'Cubana',
    loungeImageUrl: 'assets/sailors_lounge_main.png',
  ),
  LagosLounge(
    loungeName: 'Cubana',
    loungeImageUrl: 'assets/escape_night_club_main.png',
  ),
  LagosLounge(
    loungeName: 'Cubana',
    loungeImageUrl: 'assets/art_cafe_main.png',
  ),
];

final List<LagosLounge> _boardroomList = [
  LagosLounge(
    loungeName: 'Boardroom',
    loungeImageUrl: 'assets/boardroom_main.png',
  ),
  LagosLounge(
    loungeName: 'Boardroom',
    loungeImageUrl: 'assets/escape_night_club_main.png',
  ),
  LagosLounge(
    loungeName: 'Boardroom',
    loungeImageUrl: 'assets/art_cafe_main.png',
  ),
];

final List<MenuList> _menuImages = [
  MenuList(
    menuNames: 'DRINKS',
    menuImages: 'assets/cubana_drink_main.png',
    subcategoryItems: [
      SubCategory(
        subcategoryName: 'Alcohol & Beers',
        subcategoryImage: [
          'assets/vodka_main.png', 'assets/beer.png'
        ],
      ),
      SubCategory(
        subcategoryName: 'Soft Drinks & Juices',
        subcategoryImage: ['assets/soft_drinks.png', 'assets/juice.png',],
      ),
      SubCategory(
        subcategoryName: 'Cocktail & Special Drinks',
        subcategoryImage: [
          'assets/cocktail.png',
          'assets/special_drinks.png',
        ],
      ),

    ],
  ),
  MenuList(
    menuNames: 'MEALS',
    menuImages: 'assets/cubana_meal.png',
    subcategoryItems: [
      SubCategory(
        subcategoryName: 'Rice & Swallow',
        subcategoryImage: [
          'assets/rice_main.png',
          'assets/egusi_main.png',
        ],
      ),
      SubCategory(
        subcategoryName: 'Protein',
        subcategoryImage: [
          'assets/chicken_main.png',
          'assets/beef_main.png',
        ],
      ),
      SubCategory(
        subcategoryName: 'Fries',
        subcategoryImage: [
          'assets/chicken_fries.png',
          'assets/chicken_burger.png',
        ],
      ),
    ],
  ),
  MenuList(
    menuNames: 'SPECIALS',
    menuImages: 'assets/cubana_special_meal.png',
    subcategoryItems: [
      SubCategory(
        subcategoryName: 'Pepper Soup',
        subcategoryImage: [
          'assets/goatmeat_pepper.png',
          'assets/meat_pepper.png',
        ],
      ),
      SubCategory(
        subcategoryName: 'Grills',
        subcategoryImage: [
          'assets/grill_one.png',
          'assets/grill_two.png',
        ],
      ),
      SubCategory(
        subcategoryName: 'Shawarma',
        subcategoryImage: [
          'assets/shawarma_one.png',
          'assets/shawarma_two.png',
        ],
      ),
    ],
  ),
];

Set<Marker> get googleMarkers => _kGoogleMarkers;

List<LagosLounge> get cubanaItemList => _cubanaList;
List<LagosLounge> get boardroomItemList => _boardroomList;
List<MenuList> get menuImages => _menuImages;
