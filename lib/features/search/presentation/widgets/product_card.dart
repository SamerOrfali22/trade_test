import 'package:flutter/material.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/features/search/data/models/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.model}) : super(key: key);
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: context.colors.onSurface),
      ),
      child: Column(
        children: [
          Image.network(
            height: 100,
            width: double.infinity,
            model.imageUrl!,
            errorBuilder: (_, __, ___) => SizedBox(height: 100),
            fit: BoxFit.contain,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Flexible(
                    child: Text(
                      model.name!,
                      style: context.titleMedium,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                  SizedBox(height: 15),
                  if (model.searchPrices != null && model.searchPrices!.minPriceAed != null)
                    Row(
                      children: [
                        Text(
                          "AED  ",
                          style: TextStyle(color: context.colors.outline, fontSize: 12),
                        ),

                        Text(
                          model.searchPrices!.minPriceAed!.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '/' + model.unit!,
                          style: TextStyle(color: context.colors.outline, fontSize: 12),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
