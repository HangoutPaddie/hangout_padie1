import 'package:flutter/material.dart';
import './models/models.dart';

// instead of screen ids call them routes and they should be here instead. They are constants too
const defaultRoute = '/';
const eventRoute = '/event';
const homeRoute = '/home';
const loginRoute = '/login';
const onboardingRoute = '/onboarding';
const selectLocationRoute = '/selectLocation';
const signUpRoute = '/signUp';

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
      state: 'Lagos State',
      image: 'assets/images/sailor.png',
      location: 'Sailor\'s Lounge ',
      rating: 4),
  TopHangoutSpots(
      state: 'Enugu',
      image: 'assets/images/art_cafe.png',
      location: 'Golden Valley',
      rating: 5),
  TopHangoutSpots(
      state: 'Enugu',
      image: 'assets/images/sailor.png',
      location: 'Golden Valley',
      rating: 4),
  TopHangoutSpots(
      state: 'Enugu',
      image: 'assets/images/art_cafe.png',
      location: 'Golden Valley',
      rating: 2),
  TopHangoutSpots(
      state: 'Enugu',
      image: 'assets/images/sailor.png',
      location: 'Golden Valley',
      rating: 3)
];

List<TopHangoutSpots> kRecommendation = [
  TopHangoutSpots(
      state: 'Lagos State',
      image: 'assets/images/bay.png',
      location: 'Sailor\'s Lounge ',
      rating: 4),
  TopHangoutSpots(
      state: 'Enugu',
      image: 'assets/images/hard_rock_cafe.png',
      location: 'Golden Valley',
      rating: 4),
  TopHangoutSpots(
      state: 'Enugu',
      image: 'assets/images/bay.png',
      location: 'Golden Valley',
      rating: 4),
  TopHangoutSpots(
      state: 'Enugu',
      image: 'assets/images/hard_rock_cafe.png',
      location: 'Golden Valley',
      rating: 3),
  TopHangoutSpots(
      state: 'Enugu',
      image: 'assets/images/bay.png',
      location: 'Golden Valley',
      rating: 4)
];

List kNavMenue = [
  Icons.home_rounded,
  Icons.call_outlined,
  Icons.calendar_today_outlined,
  Icons.account_box_outlined
];

var kHomeHeadersStyle = const TextStyle(
  fontSize: 18,
  color: Color(
    0xff110201,
  ),
);
var kHomeSectionHeaderStyle = const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.bold,
);
