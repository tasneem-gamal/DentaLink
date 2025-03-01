import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PatientAttachmentsList extends StatelessWidget {
  const PatientAttachmentsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Attachments',
          style: CustomTextStyles.font16BlackMedium(context),
        ),
        verticalSpace(10),
        SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: [
                  const Icon(Icons.image_outlined),
                  Text(
                    'images.jpg',
                    style: CustomTextStyles.font12LightGrayRegular(
                        context),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
