import 'package:flutter/material.dart';
import 'package:playkosmos_activity/features/post/models/positioned_model.dart';

/*
This class defines the post activity view
@author: Ugochukwu Umeh
@date: 30 Dec, 2022
@modified: 28 Jan, 2023
Used by Flier
*/

class PositionedCustom extends StatelessWidget {
  ///The positioned model of the property
  final PositionedModel fPositionedModel;

  ///The text to display
  final String fText;

  ///Function when tapped
  final VoidCallback fOnTap;

  const PositionedCustom({
    Key? key,
    required this.fPositionedModel,
    required this.fText,
    required this.fOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      top: fPositionedModel.top,
      left: fPositionedModel.left,
      right: fPositionedModel.right,
      child: GestureDetector(
        onTap: fOnTap,
        child: Transform.rotate(
          angle: fPositionedModel.angle ?? 0,
          child: Row(
            mainAxisAlignment: fPositionedModel.rowAlignment,
            children: [
              Flexible(
                child: Text(
                  fText,
                  maxLines: fPositionedModel.lines,
                  overflow: TextOverflow.ellipsis,
                  style: fPositionedModel.style,
                  textAlign: fPositionedModel.textAlignment,
                ),
              ),
              const SizedBox(
                width: 1,
              ),
              Icon(
                Icons.edit,
                size: 10,
                color: fPositionedModel.style.color,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
This class defines the positioning of a flier property image
@author: Ugochukwu Umeh
@date: 28 Jan, 2023
@modified: 19 Jan, 2023
*/
class PositionedImageCustom extends StatelessWidget {
  ///The positioned model of the property
  final PositionedImage? fPositionedImage;

  ///Function when tapped
  final VoidCallback fOnTap;

  const PositionedImageCustom({
    Key? key,
    required this.fPositionedImage,
    required this.fOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (fPositionedImage == null) {
      return const SizedBox();
    }

    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      top: fPositionedImage!.top,
      left: fPositionedImage!.left,
      right: fPositionedImage!.right,
      height: fPositionedImage!.height,
      child: GestureDetector(
        onTap: fOnTap,
        child: Transform.rotate(
          angle: fPositionedImage!.angle ?? 0,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(fPositionedImage!.placeHolderImage),
                fit: BoxFit.cover,
              ),
              shape: fPositionedImage!.boxShape,
            ),
            child: Align(
              alignment: fPositionedImage!.iconAlignment,
              child: Icon(
                Icons.add_photo_alternate_rounded,
                size: 20,
                color: fPositionedImage!.iconColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
