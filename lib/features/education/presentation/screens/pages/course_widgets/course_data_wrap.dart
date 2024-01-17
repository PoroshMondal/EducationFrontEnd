import 'package:flutter/material.dart';
import '../../../../../../common/widgets/custom_rating_bar.dart';
import '../../../../../../core/utils/constants/util.dart';

//ignore: must_be_immutable
class CourseDataWrap extends StatelessWidget {
  int index;
  CourseDataWrap({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          margin: const EdgeInsets.fromLTRB(10,0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(padding: const EdgeInsets.all(2), child: Text("${Util.myListItems[index]['title']}",
                style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              Padding(padding: const EdgeInsets.all(2), child: Text("${Util.myListItems[index]['details']}"),),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: const EdgeInsets.all(2), child: Text("${Util.myListItems[index]['rating']}"),),
                  Padding(padding: const EdgeInsets.all(2),
                    //child: CustomRatingBar(double.parse(Util.myListItems[index]['rating']!)),
                    child: CustomRatingBar(),
                  ),
                  Padding(padding: const EdgeInsets.all(1),child: Text("(${Util.myListItems[index]['other_rat']})"),)
                ],
              ),
              Padding(padding: const EdgeInsets.all(2), child: Text("${Util.getBDTCurrencySymbol()}${Util.myListItems[index]['price']}",
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.blue
                  )
              ),
              )
            ],
          ),
        )
    );
  }
}
