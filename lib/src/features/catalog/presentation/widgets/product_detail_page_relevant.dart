import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/widgets/home_page_product_item.dart';

class ProductDetailRelevant extends ConsumerStatefulWidget {
  const ProductDetailRelevant({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductDetailRelevantState();
}

class _ProductDetailRelevantState extends ConsumerState<ProductDetailRelevant> {
  @override
  Widget build(BuildContext context) {
    return const ProductItemGrid(isVisible: true);
  }
}
