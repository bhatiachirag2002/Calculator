import 'package:calculator/utils/packages.dart';

class BackspaceButton extends StatelessWidget {
  const BackspaceButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    final controller = Provider.of<CalculatorProvider>(context);
    return GestureDetector(
      onTap: () => controller.onButtonPress('C'),
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
                    spreadRadius: 2,
                    blurRadius: 3,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? AppColors.whiteColor.withOpacity(0.2)
                        : AppColors.blackColor.withOpacity(0.2),
                    offset: const Offset(4.0, 3.0))
              ]),
          child: Center(
              child: Icon(
            Icons.backspace_rounded,
            size: w * 0.053,
            color: AppColors.redColor,
          ))),
    );
  }
}
