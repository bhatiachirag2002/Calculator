import 'package:calculator/utils/packages.dart';

class Themes {
  static ThemeData darkTheme(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    return ThemeData.light().copyWith(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.blackColor,
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: AppColors.whiteColor),
            backgroundColor: AppColors.blackColor,
            titleTextStyle:
                TextStyle(color: AppColors.whiteColor, fontSize: w * 0.06)),
        textTheme: TextTheme(
            displayLarge: AppTextStyle.inder500(
                fontSize: w * 0.08, color: AppColors.whiteColor),
            displayMedium: AppTextStyle.inder500(
                fontSize: w * 0.077, color: AppColors.whiteColor),
            titleSmall: AppTextStyle.inder500(
                fontSize: w * 0.045, color: AppColors.whiteColor),
            bodySmall: AppTextStyle.inder500(
                fontSize: w * 0.05, color: AppColors.whiteColor),
            bodyMedium: AppTextStyle.inder600(
              fontSize: w * 0.051,
              color: AppColors.redColor,
            ),
            labelSmall: AppTextStyle.inder900(
                fontSize: w * 0.022, color: AppColors.whiteColor)));
  }

  static ThemeData lightTheme(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    return ThemeData.light().copyWith(
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColors.whiteColor,
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: AppColors.blackColor),
            backgroundColor: AppColors.whiteColor,
            titleTextStyle:
                TextStyle(color: AppColors.blackColor, fontSize: w * 0.06)),
        textTheme: TextTheme(
            displayLarge: AppTextStyle.inder500(
                fontSize: w * 0.08, color: AppColors.blackColor),
            displayMedium: AppTextStyle.inder500(
                fontSize: w * 0.077, color: AppColors.blackColor),
            titleSmall: AppTextStyle.inder500(
                fontSize: w * 0.045, color: AppColors.blackColor),
            bodySmall: AppTextStyle.inder500(
                fontSize: w * 0.05, color: AppColors.blackColor),
            bodyMedium: AppTextStyle.inder600(
                fontSize: w * 0.051, color: AppColors.redColor),
            labelSmall: AppTextStyle.inder900(
                fontSize: w * 0.022, color: AppColors.blackColor)));
  }
}

class AppTextStyle {
  static TextStyle inder500({
    required double fontSize,
    required Color color,
  }) {
    return TextStyle(
        fontFamily: 'Inder',
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        color: color);
  }

  static TextStyle inder900({
    required double fontSize,
    required Color color,
  }) {
    return TextStyle(
        fontFamily: 'Inder',
        fontSize: fontSize,
        fontWeight: FontWeight.w900,
        color: color);
  }

  static TextStyle inder600({required double fontSize, required Color color}) {
    return TextStyle(
        fontFamily: 'Inder',
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        color: color);
  }
}
