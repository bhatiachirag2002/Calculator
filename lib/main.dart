import 'package:calculator/utils/packages.dart';
import 'package:calculator/utils/style.dart';
import 'package:calculator/view/calculator.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => CalculatorProvider())
        ],
        builder: (context, child) {
          return MaterialApp(
              home: const Calculator(),
              debugShowCheckedModeBanner: false,
              darkTheme: Themes.darkTheme(context),
              theme: Themes.lightTheme(context),
              themeMode: ThemeMode.system);
        });
  }
}
