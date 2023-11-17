import 'package:bjit_education/core/Constants/util.dart';
import 'package:flutter/material.dart';
import 'course_widgets/course_data_wrap.dart';
import 'course_widgets/course_image_wrap.dart';

class CourseWishList extends StatelessWidget {
  const CourseWishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Util.myListItems.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              //String data = "Index $index Title: ${Util.myListItems[index]['title']}";
            },
            child: Container(
              margin: const EdgeInsets.all(4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // course icons with selling rate
                  CourseImageWrap(index: index),
                  CourseDataWrap(index: index)
                ],
              ),
            ),
          );
        },
      )
    );
  }
}






