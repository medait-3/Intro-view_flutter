import 'package:flutter/material.dart';
 
import 'package:intro_views_flutter/Models/page_view_model.dart';
 
import 'package:intro_views_flutter/intro_views_flutter.dart';
 
void main() => runApp(App());
 
class App extends StatelessWidget {
 
  final pages = [
 
    PageViewModel(
 
        pageColor: Colors.black,
 
        bubble: Image.network("https://specials-images.forbesimg.com/imageserve/5d35eacaf1176b0008974b54/960x0.jpg?cropX1=790&cropX2=5350&cropY1=784&cropY2=3349"),
 
        body: Text("Page 1"),
 
        title: Text("Cars"),
 
        mainImage: Image.network("https://specials-images.forbesimg.com/imageserve/5d35eacaf1176b0008974b54/960x0.jpg?cropX1=790&cropX2=5350&cropY1=784&cropY2=3349", 
 
          height: 100.0,
 
          width: 100.0,
 
          alignment: Alignment.center,
 
        ),
 
    ),
 
    PageViewModel(
 
        pageColor: Colors.black,
 
        bubble: Image.network("https://specials-images.forbesimg.com/imageserve/5d35eacaf1176b0008974b54/960x0.jpg?cropX1=790&cropX2=5350&cropY1=784&cropY2=3349"),
 
        body: Text("Page 2"),
 
        title: Text("Orders"),
 
        mainImage: Image.network("https://specials-images.forbesimg.com/imageserve/5d35eacaf1176b0008974b54/960x0.jpg?cropX1=790&cropX2=5350&cropY1=784&cropY2=3349", 
 
          height: 100.0,
 
          width: 100.0,
 
          alignment: Alignment.center,
 
        ),
 
    ),
 
    PageViewModel(
 
        pageColor: Colors.black,
 
        bubble: Image.network("https://specials-images.forbesimg.com/imageserve/5d35eacaf1176b0008974b54/960x0.jpg?cropX1=790&cropX2=5350&cropY1=784&cropY2=3349"),
 
        body: Text("Page 3"),
 
        title: Text("Msgs"),
 
        mainImage: Image.network("https://specials-images.forbesimg.com/imageserve/5d35eacaf1176b0008974b54/960x0.jpg?cropX1=790&cropX2=5350&cropY1=784&cropY2=3349", 
 
          height: 100.0,
 
          width: 100.0,
 
          alignment: Alignment.center,
 
        ),
 
    ),
 
  ];
 
  @override
 
  Widget build(BuildContext context) {
 
    return MaterialApp(
 
      debugShowCheckedModeBanner: false,
 
      title: 'TntroView Flutter',
 
      theme: ThemeData(
 
        primarySwatch: Colors.blue,
 
      ),
 
      home: Builder(
 
        builder: (context) => IntroViewsFlutter(pages,
 
          showBackButton: true,
 
          showNextButton: true,
 
          onTapDoneButton: (){
 
            Navigator.push(context, MaterialPageRoute(
 
              builder: (context) => HomePage(),
 
            ));
 
          },
 
          pageButtonTextStyles: TextStyle(
 
            color: Colors.white,
 
            fontSize: 18.0,
 
          ),
 
        ),
 
      ),
 
    );
 
  }
 
}
 
class HomePage extends StatelessWidget {
 
  @override
 
  Widget build(BuildContext context) {
 
    return Scaffold(
 
      appBar: AppBar(
 
        title: Text("Home"),
 
      ),
 
      body: Center(
 
        child: Text("this is a home page"),
 
      ),
 
    );
 
  }
 
}
