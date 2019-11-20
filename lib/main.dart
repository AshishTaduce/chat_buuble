import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class JumpingCurve extends Curve {
  double begin;
  double end;
  JumpingCurve(this.begin, this.end);

  @override

  double transformInternal(double t) {

//    begin = begin * 10;
//    end = end * 10;
//    t = t * 10;
    double half = (begin + end) / 2;

    if (t >= begin && t <= half) {
      return ((t - begin) / (half - begin));
    }

    else if (t > half && t < end) {
      return ((end - t) / (end - half));
    }

    else {
      return 0;
    }
  }
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{


  AnimationController controller;
 Animation<double> animation;


 CurvedAnimation animation1;

 bool isBeginning = false;
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(controller);

    //animation1 = CurvedAnimation(parent: controller, curve: JumpingCurve());

    controller.repeat(
    );

    super.initState();
  }

  //final controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);

  @override

  Widget build(BuildContext context) {
    //CurvedAnimation animation1 = CurvedAnimation(parent: controller, curve: JumpingCurve());

    //Animation<Offset> offsetAnimation = Tween<Offset>(begin: Offset(0,0), end: Offset(0,-1)).animate(animation1);

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 250,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey.withAlpha(100),
                borderRadius: BorderRadius.circular(64.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SlideTransition(
                    position: Tween<Offset>(begin: Offset(0,0), end: Offset(0,-1)).animate(CurvedAnimation(parent: controller, curve: JumpingCurve(0.0, 0.4))),
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                    ),
                  ),
                  SlideTransition(
                    position: Tween<Offset>(begin: Offset(0,0), end: Offset(0,-1)).animate(CurvedAnimation(parent: controller, curve: JumpingCurve(0.1, 0.5))),
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                    ),
                  ),
                  SlideTransition(
                    position: Tween<Offset>(begin: Offset(0,0), end: Offset(0,-1)).animate(CurvedAnimation(parent: controller, curve: JumpingCurve(0.2, 0.6))),
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                    ),
                  ),
                ],
              )
              ),
          
          ],
        ),
      ),
    );
  }
}
