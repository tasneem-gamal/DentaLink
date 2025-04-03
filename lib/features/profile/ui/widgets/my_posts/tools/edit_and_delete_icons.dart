import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/features/profile/ui/widgets/my_posts/tools/edit_post_bottom_sheet.dart';
import 'package:flutter/material.dart';

class EditAndDeleteIcons extends StatelessWidget {
  const EditAndDeleteIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            showModalBottomSheet(
              backgroundColor: Colors.white,
              isScrollControlled: true,
              context: context, 
              builder: (context) => const EditPostBottomSheet()
            );
          },
          child: const Icon(
            Icons.edit_square, 
            color: ColorsManager.mainBlue,
          )
        ),
        const Icon(Icons.delete, color: Colors.red,),
      ],
    );
  }
}


