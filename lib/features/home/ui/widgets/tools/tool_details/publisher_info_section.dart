import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PublisherInfoSection extends StatelessWidget {
  const PublisherInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              'Publisher: ',
              style: CustomTextStyles.font12LightGrayRegular(context),
            ),
            TextButton(
              onPressed: (){}, 
              child: Text(
                'Dentsply Sirona',
                style: CustomTextStyles.font12MainBlueRegular(context),
              )
            ),
          ],
        ),
        IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.info_outline)
        )
      ],
    );
  }
}