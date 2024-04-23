import 'package:flutter/material.dart';
import 'package:padel/src/config/router/routes.dart';
import 'package:padel/src/presentation/view/global/undefined_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onUnknownRoute: (RouteSettings settings) =>
          MaterialPageRoute(
              builder: (BuildContext context) => UndefinedView(
                name: settings.name,
              )),
      initialRoute: '/splash',
      onGenerateRoute: Routes.onGenerateRoutes,
    );
  }
}
