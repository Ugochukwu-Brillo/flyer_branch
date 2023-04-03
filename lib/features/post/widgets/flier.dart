import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:playkosmos_activity/constants/flier_position.dart';
import 'package:playkosmos_activity/features/post/models/img_location_model.dart';
import 'package:playkosmos_activity/features/post/widgets/positioned_custom.dart';
import 'package:playkosmos_activity/utils/theme.dart';

/*
This class shows the flier and its corresponding properties
@author: Ugochukwu Umeh
@date: 30 Dec, 2022
@modified: 28 Jan, 2023
*/
class Flier extends StatelessWidget {
  const Flier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ImageAndTextPositionModel imageAndTextPosition = FlierPosition.reducedImageAndTextPositionModelList[0];
    return Material(
      child: FittedBox(
        child: Stack(
          children: [
            //The flier image
            SvgPicture.asset(
              imageAndTextPosition.image,
              width: imageAndTextPosition.imageWidth,
              height: imageAndTextPosition.imageHeight,
              placeholderBuilder: (context) => SizedBox(
                height: imageAndTextPosition.imageHeight,
                width: imageAndTextPosition.imageWidth,
                child: const ColoredBox(
                  color: Colors.grey,
                ),
              ),
            ),

            //Title selector
            PositionedCustom(
              fPositionedModel: imageAndTextPosition.positionText.activityTitle,
              fText: 'TWENTY BACKGAMMON SKILLS EVERY BEGINNER MUST KNOW, SKILLS MAX BEGINNER MUST KNOW SKILLS EVERY BEGINNER MUST KNOW',
              fOnTap: (){},
            ),

            //Details selector
            PositionedCustom(
              fPositionedModel: imageAndTextPosition.positionText.activityDetails,
              fText: 'Follow us in these Backgammon sessions and learn all the twenty backgammon skills for every beginner MAX backgammon skills for every beginner backgammon skills for every beginner backgammon skills for every beginner',
              fOnTap: (){},
            ),

            //Activity Type selector
            PositionedCustom(
              fPositionedModel: imageAndTextPosition.positionText.activityType,
              fText: 'CLASSES - CLASSES - CLASSES -C MAX CLASSES - CLASSES CLASSES - CLASSES',
              fOnTap: (){},
            ),

            //Activity Interest selector
            PositionedCustom(
              fPositionedModel:
                  imageAndTextPosition.positionText.activityInterest,
              fText: 'BACKGAMMON - BACKGAMMON - BACK MAX BACKGAMMON - BACK BACKGAMMON - BACK',
              fOnTap: (){},
            ),

            //Duration selector
            PositionedCustom(
              fPositionedModel:
                  imageAndTextPosition.positionText.activityDuration,
              fText: '10 hrs 40 mins and others MAX (SEVEN DAYS) TWO HOURS (SEVEN DAYS)',
              fOnTap: () {},
            ),

            //City selector
            PositionedCustom(
              fPositionedModel: imageAndTextPosition.positionText.activityCity,
              fText: 'HELSINKI HELSINKI HELSINKI HEL-SINKI HELSINKI HELSI MAX HELSINKI HEL-SINKI HELSINKI HELSI',
              fOnTap: (){},
            ),

            //Country selector
            PositionedCustom(
              fPositionedModel: imageAndTextPosition.positionText.activityCountry,
              fText: 'FINLAND FINLAND FINLAND FIN-LAND FIN MAX FINLAND FIN-LAND FIN',
              fOnTap: (){},
            ),

            //Date selector
            PositionedCustom(
              fPositionedModel: imageAndTextPosition.positionText.activityDate,
              fText: '25TH SEPTEMBER, 2023',
              fOnTap: (){},
            ),

            //Time selector
            PositionedCustom(
              fPositionedModel: imageAndTextPosition.positionText.activityTime,
              fText: '04:00PM (UTC +01:30) MAX 04:00PM (UTC +01:30)',
              fOnTap: (){},
            ),

            //Price selector
            PositionedCustom(
              fPositionedModel: imageAndTextPosition.positionText.activityPrice,
              fText: '\$4000000000',
              fOnTap: (){},
            ),

            //Venue selector
            PositionedCustom(
              fPositionedModel: imageAndTextPosition.positionText.activityVenue,
              fText: 'LahtiSportsCentre,Salpausselänkatu8,15110,LahtiSports Centre, Salpausselänkatu 8, 15110, 3479 MAX Centre, Salpausselänkatu 8, 15110, 3479',
              fOnTap: (){},
            ),

            PositionedImageCustom(
              fPositionedImage: imageAndTextPosition.positionText.activityImage,
              fOnTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
