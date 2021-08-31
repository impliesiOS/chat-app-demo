import 'package:chat_app_firebase/navigations/routes_key.dart';
import 'package:chat_app_firebase/screens/home_screen/presentation/page/home_screen.dart';
import 'package:chat_app_firebase/screens/home_screen/presentation/widget/AuthMethodes/Autheticate.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {

      ///splash_screen

      case Routes.HOME_SCREEN:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      case Routes.AUTH:
        return MaterialPageRoute(builder: (context) => Authenticate());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
        ),
        body: Center(
          child: Text("Page not found!"),
        ),
      );
    });
  }
/*PageRouteBuilder(
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return LoginScreen();
            },
            transitionDuration: Duration(milliseconds: 300),
            reverseTransitionDuration: Duration(milliseconds: 300),
            settings: settings,
            maintainState: true,
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, -1),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            });*/
}
