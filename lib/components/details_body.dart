import 'package:flutter/material.dart';
import 'package:online_shop_ui/components/product_description.dart';
import 'package:online_shop_ui/components/product_tile_image.dart';
import 'package:online_shop_ui/constants.dart';

import '../models/product.dart';
import 'color_size.dart';

class DetailsBody extends StatelessWidget {
  final Product product;
  const DetailsBody({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.33),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      colorWidget(product: product),
                      productDescription(product: product),
                    ],
                  ),
                ),
                productTileImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
