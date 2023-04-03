import 'package:playkosmos_activity/features/post/models/positioned_model.dart';

/*
This class defines the positioning of activity properties
@author: Ugochukwu Umeh
@date: 30 Dec, 2022
@modified: 31 Jan, 2023
*/
class TextPositionModel {
  final PositionedModel _activityTitle,
      _activityDetails,
      _activityType,
      _activityInterest,
      _activityDuration,
      _activityDate,
      _activityTime,
      _activityCity,
      _activityCountry,
      _activityVenue,
      _activityPrice;

  final PositionedImage? _activityImage;

  ///The title of the activity
  PositionedModel get activityTitle => _activityTitle;

  ///The details of the activity
  PositionedModel get activityDetails => _activityDetails;

  ///The activity type
  PositionedModel get activityType => _activityType;

  ///The activity interest
  PositionedModel get activityInterest => _activityInterest;

  ///The duration of the activity
  PositionedModel get activityDuration => _activityDuration;

  ///The activity start date
  PositionedModel get activityDate => _activityDate;

  ///The activity start time
  PositionedModel get activityTime => _activityTime;

  ///The city the activity will be held in
  PositionedModel get activityCity => _activityCity;

  ///The country the activity will be held in
  PositionedModel get activityCountry => _activityCountry;

  ///The venue the activity will be held in
  PositionedModel get activityVenue => _activityVenue;

  ///The activity fee
  PositionedModel get activityPrice => _activityPrice;

  ///The activity image
  PositionedImage? get activityImage => _activityImage;

  ///This class defines the positioning of activity properties
  const TextPositionModel({
    required PositionedModel activityTitle,
    required PositionedModel activityDetails,
    required PositionedModel activityType,
    required PositionedModel activityInterest,
    required PositionedModel activityDuration,
    required PositionedModel activityDate,
    required PositionedModel activityTime,
    required PositionedModel activityCity,
    required PositionedModel activityCountry,
    required PositionedModel activityVenue,
    required PositionedModel activityFee,
    PositionedImage? activityImage,
  })  : _activityTitle = activityTitle,
        _activityDetails = activityDetails,
        _activityType = activityType,
        _activityInterest = activityInterest,
        _activityDuration = activityDuration,
        _activityDate = activityDate,
        _activityTime = activityTime,
        _activityCity = activityCity,
        _activityCountry = activityCountry,
        _activityVenue = activityVenue,
        _activityPrice = activityFee,
        _activityImage = activityImage;
}
