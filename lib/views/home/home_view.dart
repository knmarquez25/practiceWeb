import 'package:flutter/material.dart';
import 'package:webapp/views/widgets/callToAction/callToAction.dart';
import 'package:webapp/views/widgets/centeredView/centered_view.dart';
import 'package:webapp/views/widgets/courseDetails/couse_details.dart';
import 'package:webapp/views/widgets/navigationBar/nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: Row(
                children: <Widget>[
                  CourseDetails(),
                  Expanded(
                    child: Center(
                      child: callToaAction('Join Course'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//firebase init hosting
//flutter build web
//firebase deploy --only hosting
//https://practicewebsite-e0e9e.web.app
