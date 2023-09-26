import 'package:flutter/material.dart';
import 'package:krti_app/features/home/presentation/views/widgets/app_bar.dart';
import 'package:krti_app/features/product/presentation/views/widgets/page_bottom.dart';
import 'package:krti_app/features/product/presentation/views/widgets/product_description.dart';
import 'package:krti_app/features/product/presentation/views/widgets/product_image.dart';
import 'package:krti_app/features/product/presentation/views/widgets/product_name.dart';
import 'package:krti_app/features/product/presentation/views/widgets/product_rate.dart';
import '../../../home/presentation/models/card_model.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key, required this.card});

  final MyCard card;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCategory(),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  ProductImage(card: card),
                  const ProductRate(),
                  const ProductName(),
                  const SizedBox(height: 25),
                  const Description(),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
          const PageBottom(),
        ],
      ),
    );
  }
}





