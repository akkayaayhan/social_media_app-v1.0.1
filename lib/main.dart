import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_media_app/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'social_media_app',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.userAccountScreen,
      routes: AppRoutes.routes,
    );
  }
}
