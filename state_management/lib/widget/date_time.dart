import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constants/app_style.dart';
class DateTimeWidget extends StatelessWidget {
  const DateTimeWidget({
    super.key,
    required this.titleText,
    required this.valueText,
    required this.iconSection,
  });
  final String titleText;
  final String valueText;
  final IconData iconSection;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(titleText, style: AppStyle.headingOne,),
            const Gap(6),
            Ink(
              child: InkWell(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(children: [
                    Icon(iconSection),
                    const Gap(12),
                    Text(valueText)
                  ],),
                ),
              ),
            ),
          ],),
    );
  }
}