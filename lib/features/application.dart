import 'package:correios_mobile_app/core/routes/app_routes.dart';
import 'package:correios_mobile_app/core/routes/const_routes.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  late ConstRoutes routes;
  @override
  void initState() {
    routes = GetIt.I.get();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: AppRoutes.builder(routes),
      initialRoute: routes.searchCepView,
      debugShowCheckedModeBanner: false,
    );
  }
}
