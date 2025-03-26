import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class SignOut extends StatelessWidget {
  const SignOut({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Row(
        children: [
          const Icon(Icons.logout, color: Colors.red,),
          horizontalSpace(8),
          Text(
            'Sign Out',
            style: CustomTextStyles.font14BlackRegular(context).copyWith(
              color: Colors.red
            ),
          )
        ],
      ),
    );
  }
}