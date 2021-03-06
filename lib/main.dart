import 'package:flutter/material.dart';
import 'package:flutter_admin/constants.dart';
import 'package:flutter_admin/controllers/menu_controller.dart';
import 'package:flutter_admin/responsive.dart';
import 'package:flutter_admin/screens/dashboard/dashboard_screen.dart';
import 'package:flutter_admin/screens/home/components/side_menu.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(AdminApp());
}

class AdminApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme.apply(bodyColor: Colors.white)),
          canvasColor: kSecondaryColor),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => MenuController())
        ],
        child: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      key: context.read<MenuController>().scaffoldKey,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) Expanded(child: SideMenu()),
            Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
