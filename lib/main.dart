import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'navigations/route_generator.dart';
import 'navigations/routes_key.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

final mainScaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      initialRoute: Routes.AUTH,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      scaffoldMessengerKey: mainScaffoldMessengerKey,
    );
  }
}
