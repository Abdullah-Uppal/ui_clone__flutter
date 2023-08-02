import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:task_1/app_state.dart';
import 'package:task_1/network/api_service.dart';
import 'package:task_1/pages/view_all_lessons_page.dart';
import 'package:task_1/pages/view_all_programs_page.dart';
import 'pages/home_page.dart';

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
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/programs":
            return MaterialPageRoute(
              builder: (context) => const ViewAllProgramsPage(),
            );
          case "/lessons":
            return MaterialPageRoute(
              builder: (context) => const ViewAllLessonsPage(),
            );
          default:
            return MaterialPageRoute(
              builder: (context) => const Scaffold(
                body: Center(
                  child: Text("404"),
                ),
              ),
            );
        }
      },
      home: const HomePage(),
    );
  }
}
