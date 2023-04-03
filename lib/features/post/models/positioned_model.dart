import 'package:flutter/material.dart';

/*
This class defines the positioning of an activity property except that of
image
@author: Ugochukwu Umeh
@date: 30 Dec, 2022
@modified: 24 Jan, 2023
*/
class PositionedModel {
  final double _top, _right, _left;
  final TextStyle _style;
  final int? _lines;
  final double? _angle;
  final TextAlign? _textAlignment;
  final MainAxisAlignment _rowAlignment;

  ///The distance from the top part of the flier to that of the property
  double get top => _top;

  ///The distance from the left part of the flier to that of the property
  double get left => _left;

  ///The distance from the right part of the flier to that of the property
  double get right => _right;

  ///Text style of the property
  TextStyle get style => _style;

  ///Number of lines
  int? get lines => _lines;

  ///Angle of rotation. 0 if rotation is false
  double? get angle => _angle;

  ///Property text alignment
  TextAlign? get textAlignment => _textAlignment;

  ///Property row alignment
  MainAxisAlignment get rowAlignment => _rowAlignment;

  const PositionedModel({
    required double top,
    required double right,
    required double left,
    required TextStyle style,
    int? lines,
    double? angle,
    TextAlign? textAlignment,
    MainAxisAlignment rowAlignment = MainAxisAlignment.start,
  })  : _top = top,
        _right = right,
        _left = left,
        _style = style,
        _textAlignment = textAlignment,
        _rowAlignment = rowAlignment,
        _lines = lines,
        _angle = angle;
}

/*
This class defines the positioning of an activity image property
@author: Ugochukwu Umeh
@date: 31 Jan, 2023
@modified:
*/
class PositionedImage {
  final double _top, _right, _left, _height;
  final double? _angle;
  final BoxShape _boxShape;
  final Color _iconColor;
  final String _placeHolderImage;
  final AlignmentGeometry _iconAlignment;

  ///The distance from the top part of the flier to that of the property
  double get top => _top;

  ///The distance from the left part of the flier to that of the property
  double get left => _left;

  ///The distance from the right part of the flier to that of the property
  double get right => _right;

  ///Height
  double get height => _height;

  ///Angle of rotation. 0 if rotation is false
  double? get angle => _angle;

  ///The shape of the image
  BoxShape get boxShape => _boxShape;

  ///The color of the icon
  Color get iconColor => _iconColor;

  ///Image to use as placeholder
  String get placeHolderImage => _placeHolderImage;

  ///The alignment of the icon
  AlignmentGeometry get iconAlignment => _iconAlignment;

  const PositionedImage({
    required double top,
    required double right,
    required double left,
    required double height,
    required Color iconColor,
    required String placeHolderImage,
    double? angle,
    BoxShape boxShape = BoxShape.rectangle,
    AlignmentGeometry iconAlignment = Alignment.center,
  })  : _top = top,
        _right = right,
        _left = left,
        _iconColor = iconColor,
        _placeHolderImage = placeHolderImage,
        _height = height,
        _angle = angle,
        _boxShape = boxShape,
        _iconAlignment = iconAlignment;
}