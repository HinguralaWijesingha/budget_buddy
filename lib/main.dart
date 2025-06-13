import 'package:budget_buddy/data/model/date.dart';
import 'package:budget_buddy/firebase_options.dart';
import 'package:budget_buddy/onboarding/home1.dart';
import 'package:budget_buddy/onboarding/onboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_date>('data');
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  final prefs = await SharedPreferences.getInstance();
  final onboarding = prefs.getBool("onboarding") ?? false;

 
  runApp(MyApp(onboarding: onboarding));

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  final bool onboarding;
  const MyApp({Key? key, required this.onboarding});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: onboarding ? const Home1() : const OnBoard(),
    );
  }
}
