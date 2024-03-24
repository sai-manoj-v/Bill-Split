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
                  child: Column(
                children: [
                  // Email Address
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: ConstantTexts.email),
                  ),
                  const SizedBox(
                    height: spaceBtwInputFields,
                  )

                  // Password
                  
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
