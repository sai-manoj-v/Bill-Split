import 'package:billsplit/common/styles/spacing_styles.dart';
import 'package:billsplit/utils/constants/sizes.dart';
import 'package:billsplit/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:line_icons/line_icons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: BillSplitSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Title and Logo parts
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(
                    image: AssetImage('assets/icons/bs_logo.png'),
                    height: 150,
                  ),
                  Text(ConstantTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(
                    height: pmSm,
                  ),
                  Text(ConstantTexts.loginSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),

              // Form
              Form(
                  child: Padding(
                padding: const EdgeInsets.symmetric(vertical: spaceBtwSections),
                child: Column(
                  children: [
                    // Email Address
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: ConstantTexts.email),
                    ),
                    const SizedBox(
                      height: spaceBtwInputFields,
                    ),

                    // Password
                    TextFormField(
                      decoration: const InputDecoration(
                          prefix: Icon(Iconsax.password_check),
                          labelText: ConstantTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash)),
                    ),
                    const SizedBox(
                      height: spaceBtwInputFields / 2,
                    ),

                    // Remember Me & Forgot Password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Remember Me
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text(ConstantTexts.rememberMe)
                          ],
                        ),

                        // Forget Password
                        TextButton(
                            onPressed: () {},
                            child: const Text(ConstantTexts.forgotPassword))
                      ],
                    ),
                    const SizedBox(
                      height: spaceBtwSections,
                    ),

                    // Sign In Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(ConstantTexts.signin),
                      ),
                    ),
                    const SizedBox(
                      height: spaceBtwItems,
                    ),

                    // Create Account Button
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text(ConstantTexts.createAccount),
                      ),
                    ),
                    const SizedBox(height: spaceBtwSections,),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
