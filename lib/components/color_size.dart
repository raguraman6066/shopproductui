import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/product.dart';

class colorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const colorDot({required this.color, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? color : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class colorWidget extends StatelessWidget {
  const colorWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Color'),
            Row(
              children: [
                colorDot(
                  color: Colors.greenAccent,
                  isSelected: true,
                ),
                colorDot(color: Colors.red),
                colorDot(color: Colors.blue),
                colorDot(color: Colors.pink)
              ],
            )
          ],
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: 'Size\n', style: TextStyle(color: kTextColor)),
              TextSpan(
                text: '${product.size} cm',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
  }
}
