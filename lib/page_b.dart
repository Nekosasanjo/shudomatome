import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//
// 画面 B
//
class PageB extends StatelessWidget {
  const PageB({super.key});
//bodyとcenterの間にはconstが入っていました
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 231, 247),
      body: Center(
        child: row,
      ),
    );
  }
}

moodle() async {
  const url = 'https://moodle.shudo-u.ac.jp/';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
    );
  } else {
    throw 'このURLにはアクセスできません';
  }
}

kyogaku() async {
  const url =
      'https://pt.kyogaku.shudo-u.ac.jp/cas/login?service=https%3A%2F%2Fpt.kyogaku.shudo-u.ac.jp%2Funiprove_pt%2FUnLoginControl';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
    );
  } else {
    throw 'このURLにはアクセスできません';
  }
}

shudo() async {
  const url = 'https://www.shudo-u.ac.jp/';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
    );
  } else {
    throw 'このURLにはアクセスできません';
  }
}

library() async {
  const url = 'https://library.shudo-u.ac.jp/top/';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,

    );
  } else {
    throw 'このURLにはアクセスできません';
  }
}

bus() async {
  const url =
      'https://kuruken.jp/Approach?sid=f3a83497-8f56-48ca-a7a5-7751ebe8cd10&noribaChange=1#google_vignette';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
    );
  } else {
    throw 'このURLにはアクセスできません';
  }
}

yokojiko() async {
  const url = 'https://transit.yahoo.co.jp/timetable/27437/1990?kind=1';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
    
    
    );
  } else {
    throw 'このURLにはアクセスできません';
  }
}

const moodlecon = SizedBox(
    width: 130,
    height: 90,
    child: ElevatedButton(
        onPressed: moodle, child: Text("shudo\nmoodle"), style: ButtonStyle()));
const kyogakucon = SizedBox(
    width: 130,
    height: 90,
    child: ElevatedButton(
        onPressed: kyogaku, child: Text("教学\nシステム"), style: ButtonStyle()));
const shudocon = SizedBox(
    width: 130,
    height: 90,
    child: ElevatedButton(
        onPressed: shudo, child: Text("広島\n修道大学"), style: ButtonStyle()));

const librarycon = SizedBox(
    width: 130,
    height: 90,
    child: ElevatedButton(
        onPressed: library, child: Text("図書館"), style: ButtonStyle()));

const buscon = SizedBox(
    width: 130,
    height: 90,
    child: ElevatedButton(
        onPressed: bus, child: Text("くるけん"), style: ButtonStyle()));

const yokojikocon = SizedBox(
    width: 130,
    height: 90,
    child: ElevatedButton(
        onPressed: yokojiko,
        child: Text(" 横川駅\n 時刻表\n(広島方面)"),
        style: ButtonStyle()));

const col = Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Text(
      "\n修大　まとめ\n",
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    ),
  ],
);

const manka = Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    Text(
      "・Shudo Moodle",
      style: TextStyle(
        decoration: TextDecoration.underline,
      ),
    ),
    Text(
      "・教学システム",
      style: TextStyle(
        decoration: TextDecoration.underline,
      ),
    ),
    Text(
      "・広島修道大学ホームページ",
      style: TextStyle(
        decoration: TextDecoration.underline,
      ),
    )
  ],
);

final con2 = SizedBox(
  width: 500,
  height: 300,
  child: Container(
  child: Image.asset(
    "assets/images/shudo_keshiki.jpg",
), 
),
);

const joudan = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [moodlecon, kyogakucon, shudocon],
);

const gedan = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [librarycon, buscon, yokojikocon],
);

const naka = Column(
  children: [joudan, gedan],
);

final row = Column(
  children: [col, con2, naka],
);
//下のはもう要らないヤツです
_launchInBrowser() async {
  const url = 'https://pub.dev/packages/url_launcher';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
    );
  } else {
    throw 'このURLにはアクセスできません';
  }
}
