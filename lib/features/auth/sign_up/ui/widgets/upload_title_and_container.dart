import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:dentalink/features/auth/sign_up/ui/widgets/if_image_not_uploaded.dart';
import 'package:dentalink/features/auth/sign_up/ui/widgets/if_image_uploaded.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class UploadTitleAndContainer extends StatefulWidget {
  const UploadTitleAndContainer({
    super.key, required this.onFileUploaded,
  });
  final Function(bool) onFileUploaded;

  @override
  State<UploadTitleAndContainer> createState() => _UploadTitleAndContainerState();
}

class _UploadTitleAndContainerState extends State<UploadTitleAndContainer> {
  String? selectedFileName; 
  bool isFileUploaded = false;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Icon(Icons.upload_file_outlined),
            TitleOfTextField(title: 'Upload Your student Id'),
          ],
        ),
        verticalSpace(14),
        Container(
          height: 80,
          decoration: decoration(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                selectedFileName == null ?
                const IfImageNotUploaded() 
                : IfImageUploaded(
                  selectedFileName: selectedFileName, 
                  isFileUploaded: isFileUploaded,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff34FF9D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)
                    )
                  ),
                  onPressed: pickFile, 
                  child: Text(
                    'Choose file',
                    style: CustomTextStyles.font12BlackRegular,
                  )
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  BoxDecoration decoration() {
    return BoxDecoration(
          color: ColorsManager.lightGreen,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: ColorsManager.lightGray,
            width: 1
          )
        );
  }

  Future<void> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'png'],
    );

    if (result != null) {
      setState(() {
        selectedFileName = result.files.single.name; 
        isFileUploaded = true;
      });
      widget.onFileUploaded(isFileUploaded);
    }
  }
}




