import 'package:flutter/material.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        //CourseDetails(),
        Expanded(
          child: Center(
            child: Text('Join Course'),
          ),
        )
      ],
    );
  }
}