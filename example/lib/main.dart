import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:zjsdk_ext/zj_sdk.dart';

import 'package:zjsdk_example/constants.dart';
import 'package:zjsdk_example/ad/splash.dart';
import 'package:zjsdk_example/ad/reward_video.dart';
import 'package:zjsdk_example/ad/interstitial.dart';
import 'package:zjsdk_example/ad/full_screen_video.dart';
import 'package:zjsdk_example/ad/h5_ad.dart';
import 'package:zjsdk_example/ad/content_activity.dart';
import 'package:zjsdk_example/ad/content_view.dart';
import 'package:zjsdk_example/ad/banner_view.dart';
import 'package:zjsdk_example/ad/native_express_view.dart';
import 'package:zjsdk_example/ad/express_video_view.dart';
import 'package:zjsdk_example/view/my_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          buttonTheme: ButtonThemeData(minWidth: 200),
          appBarTheme: AppBarTheme(
              // titleTextStyle: TextStyle(color: Colors.white),
              )),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/splash': (BuildContext context) => SplashPage(),
        '/reward-video': (BuildContext context) => RewardVideoPage(),
        '/interstitial': (BuildContext context) => InterstitialPage(),
        '/full-screen-video': (BuildContext context) => FullScreenVideoPage(),
        '/h5-ad': (BuildContext context) => H5AdPage(),
        '/content-video-activity': (BuildContext context) =>
            ContentActivityPage(),
        '/content-video-view': (BuildContext context) => ContentViewPage(),
        '/banner-view': (BuildContext context) => BannerViewPage(),
        '/native-express-view': (BuildContext context) => NativeExpressPage(),
        '/express-video-view': (BuildContext context) => ExpressVideoPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      appBar: AppBar(title: Text("ZjSdk_Flutter_Plugin_Demo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyButton("?????????SDK", action: () {
              // ?????????SDK
              ZjSdk.initSdk(Constants.appId, onSuccess: () {
                Fluttertoast.showToast(msg: "ZjSdk.initSuccess");
              }, onFailure: () {
                Fluttertoast.showToast(msg: "ZjSdk.initFailure");
              });
            }),
            MyButton("????????????", context: context, navigate: ('/splash')),
            MyButton("??????????????????", context: context, navigate: ('/reward-video')),
            MyButton("????????????", context: context, navigate: ('/interstitial')),
            MyButton("??????????????????",
                context: context, navigate: ('/full-screen-video')),
            MyButton("H5??????", context: context, navigate: ('/h5-ad')),
            MyButton("??????????????????",
                context: context, navigate: ('/content-video-activity')),
            MyButton("??????????????????",
                context: context, navigate: ('/content-video-view')),
            MyButton("Banner????????????",
                context: context, navigate: ('/banner-view')),
            MyButton("???????????????",
                context: context, navigate: ('/native-express-view')),
            MyButton("???????????????",
                context: context, navigate: ('/express-video-view')),
          ],
        ),
      ),
    );
  }
}
