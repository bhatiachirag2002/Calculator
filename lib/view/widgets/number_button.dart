import 'package:calculator/utils/packages.dart';

class NumberButton extends StatelessWidget {
  final String title;

  const NumberButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    final controller = Provider.of<CalculatorProvider>(context);
    return GestureDetector(
      onTap: () => controller.onButtonPress(title),
      child: Container(
          margin: EdgeInsets.only(
              left: w * 0.03,
              top: h * 0.014,
              bottom: h * 0.009,
              right: w * 0.03),
          height: h * 0.075,
          width: h * 0.075,
          decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.blackColor
                  : AppColors.whiteColor,
              borderRadius: BorderRadius.circular(360),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 1.5,
                    blurRadius: 4,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? AppColors.whiteColor.withOpacity(0.2)
                        : AppColors.blackColor.withOpacity(0.2),
                    offset: const Offset(4.0, 5.0))
              ]),
          child: Center(
            child: Text(title, style: Theme.of(context).textTheme.bodySmall),
          )),
    );
  }
}
