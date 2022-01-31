import 'package:flutter/material.dart';
import 'package:hangout_padie/model/category.dart';
import 'package:hangout_padie/model/event.dart';
import 'package:hangout_padie/screens/categories/art_galleries.dart';
import 'package:hangout_padie/screens/categories/bars.dart';
import 'package:hangout_padie/screens/categories/cafes.dart';
import 'package:hangout_padie/screens/categories/beach.dart';
import 'package:hangout_padie/screens/events/events.dart';
import 'package:hangout_padie/screens/categories/lounges.dart';
import 'package:hangout_padie/screens/categories/restaurants.dart';
import './model/onboarding_model.dart';
import './model/top_hangout_spots.dart';
import './model/event.dart';

List<OnboardingModel> kOnBoardingItems = [
  OnboardingModel(
      displayText:
          'Don\'t stress about location, Let\'s help take your friday from 0 to 100',
      image: 'assets/images/onboarding1.png'),
  OnboardingModel(
      image: 'assets/images/onboarding2.jpg',
      displayText:
          'You probably need a place to celebrate your wins with your friends. We gatchu'),
  OnboardingModel(
      image: 'assets/images/onboarding3.png',
      displayText:
          "Let's help you book reservation for the peafect place for date nights")
];

List<TopHangoutSpots> kTopHangoutSpots = [
  TopHangoutSpots(
    State: 'Lagos State',
    image: 'assets/images/sailor.png',
    location: 'Sailor\'s Lounge ',
    rating: 4,
    text:
        'Plot 1 block 12, Admiralty Road Lekki Phase 1. beside daytona supermarket, Lagos 105102 Nigeria',
    latitude: 6.451562,
    longitude: 3.469899,
  ),
  TopHangoutSpots(
      State: 'Enugu',
      image: 'assets/images/art_cafe.png',
      location: 'Golden Valley',
      rating: 5,
      text:
          '1 Golden Valley Avenue Ugwuawarawa Off Odenigbo Junction, Government Station, Nsukka, Nigeria',
      latitude: 6.855977,
      longitude: 7.3855085),
  TopHangoutSpots(
      State: 'Enugu',
      image: 'assets/images/sailor.png',
      location: 'Golden Valley',
      rating: 4,
      text:
          '1 Golden Valley Avenue Ugwuawarawa Off Odenigbo Junction, Government Station, Nsukka, Nigeria',
      latitude: 6.855977,
      longitude: 7.3855085),
  TopHangoutSpots(
      State: 'Enugu',
      image: 'assets/images/art_cafe.png',
      location: 'Golden Valley',
      rating: 2,
      text:
          '1 Golden Valley Avenue Ugwuawarawa Off Odenigbo Junction, Government Station, Nsukka, Nigeria',
      latitude: 6.855977,
      longitude: 7.3855085),
  TopHangoutSpots(
      State: 'Enugu',
      image: 'assets/images/sailor.png',
      location: 'Golden Valley',
      rating: 3,
      text:
          '1 Golden Valley Avenue Ugwuawarawa Off Odenigbo Junction, Government Station, Nsukka, Nigeria',
      latitude: 6.855977,
      longitude: 7.3855085)
];

List<TopHangoutSpots> kRecommendation = [
  TopHangoutSpots(
      State: 'Lagos State',
      image: 'assets/images/bay.png',
      location: 'Sailor\'s Lounge ',
      rating: 4,
      text:
          'Plot 1 block 12, Admiralty Road Lekki Phase 1. beside daytona supermarket, Lagos 105102 Nigeria',
      latitude: 6.451562,
      longitude: 3.469899),
  TopHangoutSpots(
      State: 'Enugu',
      image: 'assets/images/hard_rock_cafe.png',
      location: 'Golden Valley',
      rating: 4,
      text:
          '1 Golden Valley Avenue Ugwuawarawa Off Odenigbo Junction, Government Station, Nsukka, Nigeria',
      latitude: 6.855977,
      longitude: 7.3855085),
  TopHangoutSpots(
      State: 'Enugu',
      image: 'assets/images/bay.png',
      location: 'Golden Valley',
      rating: 4,
      text:
          '1 Golden Valley Avenue Ugwuawarawa Off Odenigbo Junction, Government Station, Nsukka, Nigeria',
      latitude: 6.855977,
      longitude: 7.3855085),
  TopHangoutSpots(
      State: 'Enugu',
      image: 'assets/images/hard_rock_cafe.png',
      location: 'Golden Valley',
      rating: 3,
      text:
          '1 Golden Valley Avenue Ugwuawarawa Off Odenigbo Junction, Government Station, Nsukka, Nigeria',
      latitude: 6.855977,
      longitude: 7.3855085),
  TopHangoutSpots(
      State: 'Enugu',
      image: 'assets/images/bay.png',
      location: 'Golden Valley',
      rating: 4,
      text:
          '1 Golden Valley Avenue Ugwuawarawa Off Odenigbo Junction, Government Station, Nsukka, Nigeria',
      latitude: 6.855977,
      longitude: 7.3855085)
];

List<Category> KCategories = [
  Category(image: 'assets/images/clubs.png', name: 'BEACH', navPage: Beach.id),
  Category(image: 'assets/images/bars.png', name: 'BARS', navPage: Bars.id),
  Category(image: 'assets/images/cafe.png', name: 'CAFE', navPage: Cafes.id),
  Category(
      image: 'assets/images/restaurant.png',
      name: 'RESTAURANTS',
      navPage: Restaurants.id),
  Category(
      image: 'assets/images/art.png',
      name: 'ART GALLERIES/MUSEUM',
      navPage: ArtGalleries.id),
  Category(
      image: 'assets/images/sailor\'s_lounge.png',
      name: 'LOUNGES',
      navPage: Lounges.id)
];

List<Event> kCarnival = [
  Event(
      name: 'Calabar Carnival',
      image: 'assets/images/calabar_carnival.png',
      address: 'Cross River State'),
  Event(
      name: 'Calabar Carnival',
      image: 'assets/images/carnival2.png',
      address: 'Abuja'),
];
List<Event> kComedy_shows = [
  Event(name: 'AY Live', image: 'assets/images/ay_live.png', address: 'PHC'),
  Event(
      name: 'Man on Fire',
      image: 'assets/images/man_on_fire.png',
      address: 'Lagos'),
];

List kNavMenue = [
  Icons.home_rounded,
  Icons.call_outlined,
  Icons.calendar_today_outlined,
  Icons.account_box_outlined
];

var kHomeHeadersStyle = TextStyle(fontSize: 18, color: Color(0xff110201));
var kHomeSectionHeaderStyle =
    TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
var kTextFieldTitleStyle = TextStyle(fontSize: 13, color: Colors.white);

List kLocations = [
  'Lagos',
  'Abuja',
  'Port Harcourt',
];
