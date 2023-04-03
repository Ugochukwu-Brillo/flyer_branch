import 'package:flutter/material.dart';
import 'package:playkosmos_activity/features/post/widgets/flier.dart';
import 'package:playkosmos_activity/utils/theme.dart';

/*
This class defines the post activity view
@author: Ugochukwu Umeh
@date: 30 Dec, 2022
@modified: 28 Jan, 2023
*/

class PostActivity extends StatefulWidget {
  const PostActivity({
    Key? key,
  }) : super(key: key);

  @override
  State<PostActivity> createState() => _PostActivityState();
}

class _PostActivityState extends State<PostActivity>
    with SingleTickerProviderStateMixin {
  ///The text editing controller for the post text field
  late TextEditingController _fPostTextController;

  @override
  void initState() {
    super.initState();
    _fPostTextController = TextEditingController();
  }

  @override
  void dispose() {
    _fPostTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            //TODO to pop back
          },
          child: Icon(
            Icons.arrow_back_rounded,
            size: 16,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: (){},
            child: Icon(
              Icons.settings_outlined,
              size: 16,
            ),
          ),
        ],
        elevation: 1,
        title: Text(
          'Activity Post',
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(
          top: 14
        ),
        children: [
          const Divider(
            thickness: 1,
          ),

          //Flier
          Padding(
            padding: EdgeInsets.only(
              right: 20,
              left: 20,
              top: 10,
            ),
            child: Flier(),
          ),

          Divider(
            height: 10,
            thickness: 1,
          ),

          SizedBox(
            height: 14,
          ),

          //Tag playmate
          AdditionalInformation(
            fText: 'Tag playmate, team, venue & store',
            fLeading: Icon(
              Icons.person_outline_rounded,
              color: Theme.of(context).colorScheme.tertiary,
              size: 16,
            ),
            fOnTap: () {},
          ),

          //Add images
          AdditionalInformation(
            fText: 'Add images / videos',
            fLeading: Icon(
              Icons.insert_photo_outlined,
              color: Theme.of(context).colorScheme.tertiary,
              size: 16,
            ),
            fOnTap: () {},
          ),

          //Restriction
          AdditionalInformation(
            fText: 'Restriction',
            fLeading: Icon(
              Icons.do_disturb_alt,
              color: Theme.of(context).colorScheme.tertiary,
              size: 16,
            ),
            fOnTap: () {},
          ),
        ],
      ),
    );
  }
}

/*
This class defines the additional information parameters
@author: Ugochukwu Umeh
@date: 30 Dec, 2022
@modified: 09 Jan, 2023
Used by view/post_activity
*/

class AdditionalInformation extends StatelessWidget {
  ///Function when tapped
  final VoidCallback fOnTap;

  ///Leading widget
  final Widget fLeading;

  ///Text
  final String fText;

  const AdditionalInformation({
    Key? key,
    required this.fText,
    required this.fLeading,
    required this.fOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 14,
      ),
      child: GestureDetector(
        onTap: fOnTap,
        child: Material(
          //Material is added to prevent leaking of list tile color when
          //widgets are inserted into the post activity screen
          child: ListTile(
            leading: fLeading,
            minLeadingWidth: 16,
            title: Text(
              fText,
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            tileColor: Theme.of(context).colorScheme.tertiary.withOpacity(0.1),
            horizontalTitleGap: 4,
            enabled: false,
            dense: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 9,
              vertical: 0,
            ),
          ),
        ),
      ),
    );
  }
}
