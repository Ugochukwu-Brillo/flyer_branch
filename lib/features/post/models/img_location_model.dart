import 'package:playkosmos_activity/features/post/models/text_position.dart';

/*
This class defines the flier, its height and width and position of
activity properties
@author: Ugochukwu Umeh
@date: 30 Dec, 2022
@modified: 28 Jan, 2023
Used by view/post activity, widgets/flier
*/

///This class defines the flier and position of activity properties
class ImageAndTextPositionModel {
  final String _image, _interestName;

  final double _imageHeight = 335;
  final double _imageWidth = 335;

  final TextPositionModel _positionText;

  ///The flier location
  String get image => _image;

  ///The flier name
  String get interestName => _interestName;

  ///Flier height
  double get imageHeight => _imageHeight;

  ///Flier width
  double get imageWidth => _imageWidth;

  ///Position of activity properties
  TextPositionModel get positionText => _positionText;

  ImageAndTextPositionModel({
    required String image,
    required TextPositionModel positionText,
    required String interestName,
  })  : _image = image,
        _interestName = interestName,
        _positionText = positionText;
}
