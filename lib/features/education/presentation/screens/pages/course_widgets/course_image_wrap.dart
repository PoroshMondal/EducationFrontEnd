import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/util.dart';


//ignore: must_be_immutable
class CourseImageWrap extends StatelessWidget {
  int index = 0;
  CourseImageWrap({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container( margin: const EdgeInsets.all(2),
              height: 100,
              width: 100,
              child: Image.network(
                Util.myListItems[index]['img']!,
                fit: BoxFit.fill,
              )
          ),
        ),
        Positioned(
          top: 65,
          left: 0,
          right: 0,
          bottom: 0.0,
          child: Image(
              width: 100,
              height: 30,
              image: AssetImage(Util.myListItems[index]['selling_rate']!)
          ),
        ),
      ],
    );
  }
}
