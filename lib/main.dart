import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:task_1/app_state.dart';
import 'package:task_1/network/api_service.dart';
import 'home_page.dart';

void main() {
  var app = ChangeNotifierProvider(
    create: (context) => AppState(),
    child: const MyApp(),
  );
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.openSansTextTheme(),
        // fontFamily: GoogleFonts.openSans().fontFamily,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
