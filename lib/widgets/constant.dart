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
    loungeImageUrl: 'assets/images/sailors_lounge_main.png',
  ),
  LagosLounge(
    loungeName: 'Cubana',
    loungeImageUrl: 'assets/images/escape_night_club_main.png',
  ),
  LagosLounge(
    loungeName: 'Cubana',
    loungeImageUrl: 'assets/images/art_cafe_main.png',
  ),
];

final List<LagosLounge> _boardroomList = [
  LagosLounge(
    loungeName: 'Boardroom',
    loungeImageUrl: 'assets/images/boardroom_main.png',
  ),
  LagosLounge(
    loungeName: 'Boardroom',
    loungeImageUrl: 'assets/images/escape_night_club_main.png',
  ),
  LagosLounge(
    loungeName: 'Boardroom',
    loungeImageUrl: 'assets/images/art_cafe_main.png',
  ),
];

final MenuList _menuImages = MenuList(
  menuCategoryNames: [
    'Drinks',
    'Meal',
    'Specials',
  ],
  menuCategoryImages: [
    'assets/images/cubana_drink_main.png',
    'assets/images/cubana_meal.png',
    'assets/images/cubana_special_meal.png',
  ],
  menuSubcategoryNames: CubanaMenuNames(
    drinksCategoryNames: [
      'Alcohol',
      'Beers',
      'Soft Drinks',
      'Juices',
      'Cocktails',
      'Special Drinks',
    ],
    mealCategoryNames: [],
    specialsCategoryNames: [],
  ),
  menuSubcategoryImages: CubanaMenuImages(
    alcoholImageUrl: [
      'assets/images/vodka_main.png',
      'assets/images/beer.png',
    ],
    softdrinksImageUrl: [
      'assets/images/soft_drinks.png',
      'assets/images/juice.png',
    ],
    cocktailImageUrl: [
      'assets/images/cocktail.png',
      'assets/images/special_drinks.png',
    ],
    mealCategoryImageUrls: [],
    specialsCategoryImageUrls: [],
  ),
);

Set<Marker> get googleMarkers => _kGoogleMarkers;

List<LagosLounge> get cubanaItemList => _cubanaList;
List<LagosLounge> get boardroomItemList => _boardroomList;
MenuList get menuImages => _menuImages;
