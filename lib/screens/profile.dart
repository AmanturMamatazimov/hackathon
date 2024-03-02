import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/profile_list_item.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var profileInfo = Expanded(
      child: Column(
        children: <Widget>[
          Container(
            height: kSpacingUnit * 10,
            width: kSpacingUnit * 10,
            margin: EdgeInsets.only(top: kSpacingUnit * 3),
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: kSpacingUnit * 5,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: kSpacingUnit * 2.5,
                    width: kSpacingUnit * 2.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      heightFactor: kSpacingUnit * 1.5,
                      widthFactor: kSpacingUnit * 1.5,
                      child: Icon(
                        Icons.edit,
                        color: kDarkPrimaryColor,
                        size: kSpacingUnit * 1.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: kSpacingUnit * 2),
          Text(
            'Nicolas Adams',
            style: kTitleTextStyle,
          ),
          SizedBox(height: kSpacingUnit * 0.5),
          Text(
            'nicolasadams@gmail.com',
            style: kCaptionTextStyle,
          ),
          SizedBox(height: kSpacingUnit * 2),
          Container(
            height: kSpacingUnit *1,
            width: kSpacingUnit * 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kSpacingUnit * 3),
            ),
            child: Center(
              child: SizedBox(),
            ),
          ),
        ],
      ),
    );


    var header = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: kSpacingUnit * 3),
        /*Icon(
          Icons.arrow_back_ios_new_rounded,
          size: kSpacingUnit * 3,
        ),*/
        profileInfo,
        SizedBox(width: kSpacingUnit * 3),
      ],
    );

    return Scaffold(
            body: Column(
              children: <Widget>[
                SizedBox(height: kSpacingUnit * 5),
                header,
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      ProfileListItem(
                        icon: Icons.account_circle_outlined,
                        text: 'Privacy',
                      ),
                      ProfileListItem(
                        icon: Icons.history,
                        text: 'Purchase History',
                      ),
                      ProfileListItem(
                        icon: Icons.question_mark,
                        text: 'Help & Support',
                      ),
                      ProfileListItem(
                        icon: Icons.settings,
                        text: 'Settings',
                      ),
                      ProfileListItem(
                        icon: Icons.supervised_user_circle_outlined,
                        text: 'Invite a Friend',
                      ),
                      ProfileListItem(
                        icon: Icons.login,
                        text: 'Logout',
                        hasNavigation: false,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
  }
}
