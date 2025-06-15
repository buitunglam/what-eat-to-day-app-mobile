import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/core/styles/app_colors.dart';
import 'package:whattoeattoday/src/features/search/data/data_sources/local/list_filter.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  int? timeSelectedId;
  int? rateSelectedId;
  int? categorySelectedId;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7, // 60% screen height
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(70)),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const Text(
              "Filter Search",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Time",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),

            SizedBox(
              width: double.infinity,
              child: Wrap(
                spacing: 10.0,
                // runSpacing: 10.0,
                children:
                    sampleListTimeFilter.map((item) {
                      final isSelected = timeSelectedId == item.id;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            timeSelectedId = item.id;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color:
                                isSelected
                                    ? AppColors.primaryColor
                                    : AppColors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: AppColors.primaryColor,
                              width: 1.5,
                            ),
                          ),
                          child: Text(
                            item.title,
                            style: TextStyle(
                              fontSize: 16,
                              color:
                                  isSelected
                                      ? AppColors.white
                                      : AppColors.primaryColor,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
              ),
            ),

            SizedBox(height: 16),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Rate",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),

            SizedBox(
              width: double.infinity,
              child: Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                children:
                    sampleListRate.map((item) {
                      final isSelected = rateSelectedId == item.id;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            rateSelectedId = item.id;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color:
                                isSelected
                                    ? AppColors.primaryColor
                                    : AppColors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: AppColors.primaryColor,
                              width: 1.5,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                item.star,
                                style: TextStyle(
                                  fontSize: 16,
                                  color:
                                      isSelected
                                          ? AppColors.white
                                          : AppColors.primaryColor,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Icon(
                                Icons.star,
                                color:
                                    isSelected
                                        ? AppColors.white
                                        : AppColors.primaryColor,
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
              ),
            ),

            SizedBox(height: 16),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Category",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),

            SizedBox(
              width: double.infinity,
              child: Wrap(
                spacing: 5,
                runSpacing: 10.0,
                children:
                    sampleListCategory.map((item) {
                      final isSelected = categorySelectedId == item.id;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            categorySelectedId = item.id;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color:
                                isSelected
                                    ? AppColors.primaryColor
                                    : AppColors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: AppColors.primaryColor,
                              width: 1.5,
                            ),
                          ),
                          child: Text(
                            item.title,
                            style: TextStyle(
                              fontSize: 16,
                              color:
                                  isSelected
                                      ? AppColors.white
                                      : AppColors.primaryColor,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
              ),
            ),

            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                padding: const EdgeInsets.symmetric(
                  vertical: 13,
                  horizontal: 100,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text(
                "Filter",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showFullScreenBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => const Filter(),
  );
}
