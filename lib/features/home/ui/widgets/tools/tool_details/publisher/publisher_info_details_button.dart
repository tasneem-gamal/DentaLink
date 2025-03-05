import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/widgets/label_text_app.dart';
import 'package:flutter/material.dart';

class PublisherInfoDetailsButton extends StatefulWidget {
  const PublisherInfoDetailsButton({
    super.key,
  });

  @override
  State<PublisherInfoDetailsButton> createState() => _PublisherInfoDetailsButtonState();
}

class _PublisherInfoDetailsButtonState extends State<PublisherInfoDetailsButton> {
  bool isPressed = false;
  OverlayEntry? overlayEntry;

  @override
  void dispose() {
    overlayEntry?.remove();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: toggleContainer, 
      icon: const Icon(Icons.info_outline)
    );
  }

    OverlayEntry _createOverlayEntry() {
    final screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;
    return OverlayEntry(
      builder: (context) => Stack(
        children: [
          Positioned(
            right: screenWidth * 0.05,
            left: screenWidth * 0.1, 
            bottom: screenHeight * 0.2,
            top: screenHeight * 0.6, 
            child: Material(
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: ColorsManager.moreLightGray),
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const LabelTextApp(
                        label: 'About Publisher: ', 
                        text: 'One of the largest manufacturers of dental equipment and supplies. They produce everything from hand instruments to imaging systems.'
                      ),
                      verticalSpace(4),
                      const LabelTextApp(
                        label: 'Address: ', 
                        text: '123 Elm Street, Apt 4B, Springfield, IL 62704, USA'
                      ),
                      verticalSpace(4),
                      const LabelTextApp(
                        label: 'Contact info: ', 
                        text: '+999585106845'
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
      ]),
    );
  }

    void toggleContainer({bool closeOnly = false}) {
  if (isPressed || closeOnly) {
    removeOverlay();
  } else {
    overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(overlayEntry!);
    setState(() {
      isPressed = true;
    });
  }
}

void removeOverlay() {
  overlayEntry?.remove();
  overlayEntry = null;
  setState(() {
    isPressed = false;
  });
}
}