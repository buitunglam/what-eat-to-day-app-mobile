import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whattoeattoday/src/core/styles/app_colors.dart';
import 'package:whattoeattoday/src/shared/presentation/widgets/text_field_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(),
              child: Text(
                "Create an account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(),
              child: Text(
                'Let’s help you set up your account, it won’t take long.',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),

            SizedBox(height: 20),

            TextFieldWidget(
              label: "Name",
              hintText: "Enter your name",
              onChanged: (value) {},
            ),

            SizedBox(height: 20),

            TextFieldWidget(
              label: "Email",
              hintText: "Enter your email",
              onChanged: (value) {},
              isPasswordField: false,
            ),

            SizedBox(height: 20),

            TextFieldWidget(
              label: "Password",
              hintText: "Enter your password",
              onChanged: (value) {},
              isPasswordField: true,
            ),

            SizedBox(height: 20),

            TextFieldWidget(
              label: "Confirm Password",
              hintText: "Retype Password",
              onChanged: (value) {},
              isPasswordField: true,
            ),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  value: _isTermsAccepted,
                  onChanged: (value) {
                    setState(() {
                      _isTermsAccepted = !_isTermsAccepted;
                    });
                  },
                  activeColor: AppColors.coloFF9C00,
                  hoverColor: AppColors.coloFF9C00,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  side: BorderSide(
                    color: AppColors.coloFF9C00,
                    width: 1,
                  ),
                ),
                Text(
                  "Accept terms & Conditions",
                  style: TextStyle(
                    color: AppColors.coloFF9C00,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Login button
            GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 1,
                  decoration: BoxDecoration(color: AppColors.colorD9D9D9),
                ),
                SizedBox(width: 10),
                Text(
                  "Or Sign in with",
                  style: TextStyle(color: AppColors.colorD9D9D9),
                ),
                SizedBox(width: 10),
                Container(
                  width: 80,
                  height: 1,
                  decoration: BoxDecoration(color: AppColors.colorD9D9D9),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(25),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images_svg/google.svg',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(25),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images_svg/facebook.svg',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Already a member?",
                  style: TextStyle(color: AppColors.black, fontSize: 12),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: AppColors.coloFF9C00, fontSize: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
