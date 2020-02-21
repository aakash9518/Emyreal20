import 'package:empyreal20/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:empyreal20/start_page.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _cIndex = 0;
  

  // This widget is the root of your application.
  @override

  
  
  final _pageOptions = [
       Dashboard(),
       SPState(),
       
    ];
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
          primarySwatch: Colors.pink,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Empyreal 2020"),
          ),
          body: _pageOptions[_cIndex],
          bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.red,
          currentIndex: _cIndex,
          type: BottomNavigationBarType.fixed,
          
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_filled), title: new Text('Play')),
            BottomNavigationBarItem(
                icon: Icon(Icons.info), title: new Text('About'))
          ],
          onTap: (index) {
           setState(() {
                    _cIndex = index;
                });
          },
        )
        )
        
        
        
        
        );
  }
}
