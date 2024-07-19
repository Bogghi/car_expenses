import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FuelCard extends StatelessWidget {
  final double value;
  final double quantity;
  final bool gasType;

  const FuelCard({
    super.key,
    required this.value,
    required this.quantity,
    required this.gasType
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height*0.1,
        width: MediaQuery.of(context).size.width-10,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.transparent,
          ),
          child: const Row(
            children: [
              Expanded(
                child: Icon(FontAwesomeIcons.gasPump)
              ),
              Expanded(
                flex: 4,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Benzina 10 lt",
                          style: TextStyle(
                              fontSize: 15
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text("value €")
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
