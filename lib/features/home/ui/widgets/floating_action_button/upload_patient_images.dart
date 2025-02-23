import 'package:flutter/material.dart';

class UploadPatientImages extends StatelessWidget {
  const UploadPatientImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.upload_file_outlined),
            
          ],
        )
      ],
    );
  }
}