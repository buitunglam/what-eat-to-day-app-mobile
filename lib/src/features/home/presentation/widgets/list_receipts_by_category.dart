import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/features/home/data/data_sources/local/sample_receipts.dart';
import 'package:whattoeattoday/src/features/home/presentation/widgets/card_receipt_item.dart';

class ListReceiptsByCategory extends StatefulWidget {
  const ListReceiptsByCategory({super.key});

  @override
  State<ListReceiptsByCategory> createState() => _ListReceiptsByCategoryState();
}

class _ListReceiptsByCategoryState extends State<ListReceiptsByCategory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        clipBehavior: Clip.none, 
        scrollDirection: Axis.horizontal,
        itemCount: sampleListReceipts.length,
        itemBuilder: (context, index) {
          final receipt = sampleListReceipts[index];
          return CardReceiptItem(receipt: receipt);
        },
        separatorBuilder: (context, index) => const SizedBox(width: 15),
      ),
    );
  }
}
