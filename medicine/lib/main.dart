import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:medicine/screens/add_medication/addMedication_provider/addMedication_provider.dart';
import 'package:medicine/screens/add_medication/view/addMedication_page.dart';
import 'package:medicine/screens/home_screen/homePage_provider/homePage_provider.dart';
import 'package:medicine/screens/login_screen/login_provider/login_provider.dart';
import 'package:medicine/screens/login_screen/view/login_page.dart';
import 'package:medicine/screens/main_tab.dart';
import 'package:medicine/screens/medication_form/medicationForm_provider/medicationForm_provider.dart';
import 'package:medicine/screens/medication_form/view/medicationForm_page.dart';
import 'package:medicine/screens/medication_strength/medicationStrength_provider/medicationStrength_provider.dart';
import 'package:medicine/screens/medication_strength/view/medicationStrength_page.dart';
import 'package:medicine/screens/signup_screen/signup_provider/signup_provider.dart';
import 'package:medicine/screens/signup_screen/view/signup_page.dart';
import 'package:medicine/screens/why_medication/view/whyMedication_page.dart';
import 'package:medicine/screens/why_medication/whyMedication_provider/whyMedication_provider.dart';
import 'package:medicine/services/Scroll_behavior.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: SignUpProvider()),
        ChangeNotifierProvider.value(value: LoginProvider()),
        ChangeNotifierProvider.value(value: AddMedicationProvider()),
        ChangeNotifierProvider.value(value: MedicationFormProvider()),
        ChangeNotifierProvider.value(value: MedicationStrengthProvider()),
        ChangeNotifierProvider.value(value: WhyMedicationProvider()),
        ChangeNotifierProvider.value(value: HomePageProvider()),
      ],
      child: GetMaterialApp(
        builder: (context, child) => ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, child!),
            maxWidth: 1200,
            minWidth: 450,
            defaultScale: true,
            breakpoints: [
              const ResponsiveBreakpoint.resize(450, name: MOBILE),
              const ResponsiveBreakpoint.autoScale(800, name: TABLET),
              const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
              const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
              const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
            ],
            background: Container(color: const Color(0xFFF5F5F5))),
        title: 'Medicine',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Open Sans",
          backgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
        ),
        scrollBehavior: MyCustomScrollBehavior(),
        home: const WhyMedicationPage(),
        routes: {
          //define routes here
        },
      ));
  }
}
