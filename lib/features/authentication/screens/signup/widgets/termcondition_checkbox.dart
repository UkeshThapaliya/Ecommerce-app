import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_onway/features/authentication/controllers/signup/signup_controller.dart';
import 'package:rent_onway/utils/constants/color.dart';
import 'package:rent_onway/utils/constants/sizes.dart';
import 'package:rent_onway/utils/constants/text_string.dart';
import 'package:rent_onway/utils/helper/helper_fun.dart';

class ThTermConditionCheckbox extends StatelessWidget {
  const ThTermConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = (SignupController());
    final dark = ThHelperFun.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(
            () => Checkbox(
                value: controller.privacyPolicy.value,
                onChanged: (value) => controller.privacyPolicy.value =
                    !controller.privacyPolicy.value),
          ),
        ),
        const SizedBox(width: ThSize.spaceBtwItems),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: '${Thtexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: '${Thtexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? ThColors.white : ThColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? ThColors.white : ThColors.primary,
                    )),
            TextSpan(
                text: '${Thtexts.and} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: Thtexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? ThColors.white : ThColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? ThColors.white : ThColors.primary,
                    )),
          ]),
        ),
      ],
    );
  }
}
