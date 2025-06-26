import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:my_app/page_b.dart';

//
// 画面 A
//
class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.blue[100],
      body: InteractiveViewer(
        minScale: 0.1, maxScale: 3, 
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: FittedBox(
            child: Image.asset("assets/images/campusGuideMap_page-0001.jpg"),
          ),
        ),
        ),
    );
  }
}

final row = Column(
  children: [col],
);


final col = SizedBox(
  height: 600,
  child: FittedBox(
    child: Image.asset("assets/images/campasgou/1goukan_page-0001.jpg"),
  ),
);

final con2 = SizedBox(
  child: FittedBox(
    child: Image.asset("assets/images/campasgou/1goukan_page-0001.jpg"),
  ),
);

final naka = SizedBox(
  child: FittedBox(
    child: Image.asset("assets/images/campasgou/2goukan_page-0001.jpg"),
  ),
);




/*SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: FittedBox(
            child: Image.asset("assets/images/campusGuideMap_page-0001.jpg"),
          ),
        ),
        */
      