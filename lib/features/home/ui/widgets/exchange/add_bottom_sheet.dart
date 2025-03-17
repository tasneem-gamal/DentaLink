import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/widgets/custom_app_button.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:dentalink/features/home/ui/widgets/exchange/upload_image_exchange.dart';
import 'package:flutter/material.dart';

class AddBottomSheet extends StatefulWidget {
  const AddBottomSheet({
    super.key,
  });

  @override
  State<AddBottomSheet> createState() => _AddBottomSheetState();
}

class _AddBottomSheetState extends State<AddBottomSheet> {
    bool isFileUploaded = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.65,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 24,
            right: 24,
            top: 24
          ),
          child: Form(
            child: Column(
              children: [
                CustomTextFormField(
                  validator: (value){},
                  hintText: 'Your name',
                ),
                verticalSpace(12),
                CustomTextFormField(
                  validator: (value){},
                  hintText: 'Tooth name',
                ),
                verticalSpace(12),
                CustomTextFormField(
                  validator: (value){},
                  hintText: 'Exchange with',
                ),
                verticalSpace(12),
                CustomTextFormField(
                  validator: (value){},
                  hintText: 'Notes',
                ),
                verticalSpace(12),
                CustomTextFormField(
                  validator: (value){},
                  hintText: 'Phone number',
                ),
                verticalSpace(12),
                UploadImageExchange(
                  onFileUploaded: setFileUploaded,
                  onFileSelected: (file) {}
                ),
                verticalSpace(12),
                const CustomAppButton(
                  btnText: 'Submit'
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

    void setFileUploaded(bool value) {
    setState(() {
      isFileUploaded = value;
    });
  }
}