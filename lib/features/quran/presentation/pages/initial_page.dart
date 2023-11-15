import 'package:bjit_education/core/Constants/other_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../../../../core/Constants/string_constants.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return AppSlider();
  }

}

String text1 = OtherConstants.pageOneText[0],
    text2 = OtherConstants.pageOneText[1],
    text3 = OtherConstants.pageOneText[2];

class AppSlider extends State<InitialPage>{

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewConstraints){
          return ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewConstraints.maxHeight
              ),
            child: _initialSliders(context),
          );
        },
      ),
    );
  }

  Widget _initialSliders(BuildContext context){
    return Container(
      key: const Key("Root"),
      child: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(""),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(""),
              Center(
                  child: SizedBox(
                    height: 400,
                    child: PageView(
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;

                          if(index == 0){
                            text1 = StringConstants.initialPage1Text1;
                            text2 = StringConstants.initialPage1Text2;
                            text3 = StringConstants.initialPage1Text3;
                          }

                          if(index == 1){
                            text1 = StringConstants.initialPage2Text1;
                            text2 = StringConstants.initialPage2Text2;
                            text3 = StringConstants.initialPage2Text3;
                          }

                          if(index == 2){
                            text1 = StringConstants.initialPage3Text1;
                            text2 = StringConstants.initialPage3Text2;
                            text3 = StringConstants.initialPage3Text3;
                          }

                        });
                      },
                      children: <Widget>[
                        Container(
                          //color: Colors.red,
                          child: _slidingPage(context,0),
                          //child: _Page1(0),
                        ),

                        Container(
                          //color: Colors.yellow,
                          child: _slidingPage(context,1),
                        ),

                        Container(
                          //color: Colors.blueAccent,
                          child: _slidingPage(context,2),
                        )
                      ],
                    ),
                  )
              ),
              Center(
                child: DotsIndicator(
                  dotsCount: OtherConstants.pageItems.length,
                  position: currentIndex.toDouble(),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 140),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            text1,
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(32, 21, 97, 1)),
                          ),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              text2,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(32, 21, 97, 1)),
                            )),
                        Text(
                          text3,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(32, 21, 97, 1)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    color: const Color.fromRGBO(30, 140, 202, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              StringConstants.browseButtonString,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: StringConstants.archivoFontFamily,
                                  color: Colors.white),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              StringConstants.signInButtonString,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: StringConstants.archivoFontFamily,
                                  color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _slidingPage(BuildContext context, int item){
    return Image(
      image: AssetImage(_getPageImage(item)),
    );
  }

  String _getPageImage(int item){
    int imageItem = 0;
    switch(item){
      case 0:{
        imageItem = item;
      }
      case 1:{
        imageItem = item;
      }
      case 2: {
        imageItem = item;
      }

    }
    return OtherConstants.pageItems[imageItem];
  }

}
