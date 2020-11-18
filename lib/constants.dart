import 'package:alice/alice.dart';
import 'package:flutter/material.dart';

// this for alice debugging network calls
Alice alice = Alice(showNotification: true, navigatorKey: navigatorKey);
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

const Locale americanEnglish = Locale('en', 'US');
const Locale egyptianArabic = Locale('ar', 'EG');
const base_url = '';
const headers = {'Accept': 'application/json'};

// styles
final Color kBackgroundColor = Colors.grey[300];
const Color kPrimaryColor = Colors.green;
const TextStyle kTStyle = TextStyle(
  fontSize: 30,
  color: Colors.white,
);
