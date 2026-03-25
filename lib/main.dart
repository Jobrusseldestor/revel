import 'package:flutter/material.dart';
import 'screens/Onboarding.dart';
import 'screens/SignIn.dart';
import 'screens/MainMenu.dart';
import 'screens/HomeEmergencyHotlinesFireStations.dart';
import 'screens/HomeEmergencyHotlineHospitals.dart';
import 'screens/HomeEmergencyHotlinesPoliceStations.dart';  
import 'screens/HomeBreakingNews.dart';
import 'screens/ExploreScreen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/Onboarding',
      routes: {
			'/Onboarding': (context) => const Onboarding(),
      '/signin': (context) => const SignIn(),
      '/mainmenu': (context) => const MainMenu(),
      '/homeemergencyhotlinesfirestations': (context) => const HomeEmergencyHotlinesFireStations(),
      '/homeemergencyhotlineshospitals': (context) => const HomeEmergencyHotlinesHospitals(),
      '/homeemergencyhotlinespolicestations': (context) => const HomeEmergencyHotlinesPoliceStations(),
      '/homebreakingnews': (context) => const HomeBreakingNews(),

      '/explorescreen': (context) => const Explorescreen(),
      },
    );
  }
}