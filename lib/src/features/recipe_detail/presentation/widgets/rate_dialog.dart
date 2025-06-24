import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/core/styles/app_colors.dart';

class RateDialog extends StatelessWidget {
  const RateDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 8,
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Recipe Link ",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 20,
                children: [
                  Image.asset(
                    'assets/images/active_star.png',
                    width: 24,
                    height: 24,
                  ),
                  Image.asset(
                    'assets/images/active_star.png',
                    width: 24,
                    height: 24,
                  ),
                  Image.asset(
                    'assets/images/inactive_star.png',
                    width: 24,
                    height: 24,
                  ),
                  Image.asset(
                    'assets/images/inactive_star.png',
                    width: 24,
                    height: 24,
                  ),
                  Image.asset(
                    'assets/images/inactive_star.png',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.colorFFAD30,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text("Send"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
