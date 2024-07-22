import 'package:calculator/utils/packages.dart';
import 'package:calculator/view/widgets/long_button.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<CalculatorProvider>(context);
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              width: w * 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.03),
                child: SingleChildScrollView(
                  reverse: true,
                  child: Text(
                    controller.input,
                    style: Theme.of(context).textTheme.displayMedium,
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
            ),
          ),
          controller.output.isEmpty
              ? const SizedBox()
              : SizedBox(
                  width: w * 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: w * 0.03, vertical: h * 0.01),
                    child: Text(
                      controller.output.isEmpty ? '' : '= ${controller.output}',
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ),
                ),
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColors.lightBlackColor
                    : AppColors.lightWhiteColor,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),
            width: w * 1,
            height: h * 0.51,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OperatorButton(
                      title: 'AC',
                    ),
                    NumberButton(title: '7'),
                    NumberButton(title: '4'),
                    NumberButton(title: '1'),
                    NumberButton(title: '00'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OperatorButton(
                      title: '×',
                    ),
                    NumberButton(title: '8'),
                    NumberButton(title: '5'),
                    NumberButton(title: '2'),
                    NumberButton(title: '0'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OperatorButton(
                      title: '/',
                    ),
                    NumberButton(title: '9'),
                    NumberButton(title: '6'),
                    NumberButton(title: '3'),
                    NumberButton(title: '.'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BackspaceButton(),
                    OperatorButton(title: '+'),
                    OperatorButton(title: '-'),
                    LongButton(title: '=')
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
