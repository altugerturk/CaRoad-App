

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> 
{
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("CaRoad")
      ),
      body: Center(
        
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/CAROAD3.png",
            ),
            Text(
              'SELECT YOUR CAR',
              style: TextStyle(
                color: Colors.redAccent,
                  fontSize: 40,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchPage()),
          );
        } 
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SearchPage extends StatefulWidget {
  SearchPage({Key key, this.title}) : super(key: key);
  
  final String title;

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage>{
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  String buttonName0 = "Choose";
  String buttonName1 = "Choose";
  String buttonName2 = "Choose";
  String buttonName3 = "Choose";
  List<String> ageRegion = ["18-25","25-35","35-50","50+"];
  List<String> kids = ["Yes","No"];
  List<String> gender = ["Male","Female"];
  List<String> business = ["Yes","No"];
  String answer0 = "-----------";
  String answer1 = "-----------";
  String answer2 = "-----------";
  String answer3 = "-----------";
  List<String> results = [" ", " ", " ", " "];
  
  
   void _selectItem(String name)
{
  Navigator.pop(context);
  
  setState(() 
  {
     answer0 = name;
  });
  
}

void _selectItem1(String name)
{
  Navigator.pop(context);
  
  setState(() 
  {
     answer1 = name;
  });
  
}

void _selectItem2(String name)
{
  Navigator.pop(context);
  
  setState(() 
  {
     answer2 = name;
  });
  
}

void _selectItem3(String name)
{
  Navigator.pop(context);
  
  setState(() 
  {
     answer3 = name;
  });
  
}

void _settingModalBottomSheet0(List<String> list)
{
    showModalBottomSheet(
      context: context,
      builder: (context){
          return Container(
            child: new Wrap(
            children: <Widget>[
            new ListTile
          (
            leading: new Icon(Icons.accessibility),
            title: new Text(list[0]),
            onTap: () => {
            _selectItem(list[0]),
            results[0] = list[0],  
            }       
          ),
          new ListTile(
            leading: new Icon(Icons.accessibility),
            title: new Text(list[1]),
            onTap: () => {
            _selectItem(list[1]),
            results[0] = list[1],  
            }   
          ),
          new ListTile(
            leading: new Icon(Icons.accessibility),
            title: new Text(list[2]),
            onTap: () => {
            _selectItem(list[2]),
            results[0] = list[2],  
            }       
          ),
          new ListTile(
            leading: new Icon(Icons.accessibility),
            title: new Text(list[3]),
            onTap: () => {
            _selectItem(list[3]),
            results[0] = list[3],  
            }   
          ),
            ],
          ),
          );
      }
    );
}

void _settingModalBottomSheet1(List<String> list)
{
    showModalBottomSheet(
      context: context,
      builder: (context){
          return Container(
            child: new Wrap(
            children: <Widget>[
            new ListTile
          (
            leading: new Icon(Icons.accessibility),
            title: new Text(list[0]),
            onTap: () => {
            _selectItem1(list[0]),
            results[1] = list[0],  
            }            
          ),
          new ListTile(
            leading: new Icon(Icons.accessibility),
            title: new Text(list[1]),
            onTap: () => {
            _selectItem1(list[1]),
            results[1] = list[1],  
            }                
          ),
            ],
          ),
          );
      }
    );
}

void _settingModalBottomSheet2(List<String> list)
{
    showModalBottomSheet(
      context: context,
      builder: (context){
          return Container(
            child: new Wrap(
            children: <Widget>[
            new ListTile
          (
            leading: new Icon(Icons.accessibility),
            title: new Text(list[0]),
            onTap: () => {
            _selectItem2(list[0]),
            results[2] = list[0],  
            }           
          ),
          new ListTile(
            leading: new Icon(Icons.accessibility),
            title: new Text(list[1]),
            onTap: () => {
            _selectItem2(list[1]),
            results[2] = list[1],  
            }                   
          ),
            ],
          ),
          );
      }
    );
}

void _settingModalBottomSheet3(List<String> list)
{
    showModalBottomSheet(
      context: context,
      builder: (context){
          return Container(
            child: new Wrap(
            children: <Widget>[
            new ListTile
          (
            leading: new Icon(Icons.accessibility),
            title: new Text(list[0]),
            onTap: () => {
              results[3] = list[0],
            _selectItem3(list[0]),
              
            }                 
          ),
          new ListTile(
            leading: new Icon(Icons.accessibility),
            title: new Text(list[1]),
            onTap: () => {
              results[3] = list[1],
            _selectItem3(list[1]),
              
            }                   
          ),
            ],
          ),
          );
      }
    );
}
 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Search Page',
        style: TextStyle(fontSize: 20),
        ),
        
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Choose your age region",
              style: TextStyle(fontSize: 25),
              
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              RaisedButton(
              child: Text(buttonName0),
              color: Colors.white,
              onPressed: ()
              {
                setState(() {
                  _settingModalBottomSheet0(ageRegion);
                });
              }
            ),
            Text(
              answer0,
              style: TextStyle(fontSize: 25),
              ),
              ]
               ),
            
              
           
            
            Text(
              "Do you have kids ?",
              style: TextStyle(fontSize: 25),
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              RaisedButton(
              child: Text(buttonName0),
              color: Colors.white,
              onPressed: ()
              {
                setState(() {
                  _settingModalBottomSheet1(kids);
                });
              }
            ),
            Text(
              answer1,
              style: TextStyle(fontSize: 25),
              ),
              ]
               ),
            
            Text(
            "Gender",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              RaisedButton(
              child: Text(buttonName0),
              color: Colors.white,
              onPressed: ()
              {
                setState(() {
                  _settingModalBottomSheet2(gender);
                });
              }
            ),
            Text(
              answer2,
              style: TextStyle(fontSize: 25),
              ),
              ]
               ),
            
            Text(
              "Do you looking a car for business ?",
              style: TextStyle(fontSize: 25),
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              RaisedButton(
              child: Text(buttonName0),
              color: Colors.white,
              onPressed: ()
              {
                setState(() {
                  _settingModalBottomSheet3(business);
                });
              }
            ),
            Text(
              answer3,
              style: TextStyle(fontSize: 25),
              ),
              ]
               ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: (){
          for(int i = 0;i<results.length;i++){
            print(results[i]);
          }
          if(results[0] == "18-25" && results[1] == "No"){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => clioPage()),
          );
          }
          else if(results[0] == "35-50" && results[1] == "Yes"){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => x6Page()),
          );
          }
        }, 
      ),
    );
  }
}

class x6Page extends StatefulWidget{
  x6Page({Key key, this.title}) : super(key: key);
  
  final String title;

  @override
  x6PageState createState() => x6PageState();

}

class x6PageState extends State<x6Page>
{
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
        title: Text('BMW X6 SUV',
        style: TextStyle(fontSize: 20),
        ),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/images/x6.jpg"),
            Text(
              "----BENEFITS----",
              style: TextStyle(color: Colors.greenAccent, fontSize: 50),
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.check_circle),
                Text(
                  "Automatic",
                  style: TextStyle(fontSize: 30.0),

                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.check_circle),
                Text(
                  "4x4 2.0 TDI Engine",
                  style: TextStyle(fontSize: 30.0),

                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.check_circle),
                Text(
                  "Bluetooth Feature and GPS",
                  style: TextStyle(fontSize: 30.0),

                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.check_circle),
                Text(
                  "Has 6 seats for big families",
                  style: TextStyle(fontSize: 30.0),

                )
              ],
            )
          ],
        ),
      ),
    );
  }

}




class clioPage extends StatefulWidget {
  clioPage({Key key, this.title}) : super(key: key);
  
  final String title;

  @override
  clioPageState createState() => clioPageState();
}

class clioPageState extends State<clioPage>{

  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
        title: Text('Renault Clio',
        style: TextStyle(fontSize: 20),
        ),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/images/renault.jpg"),
            Text(
              "----BENEFITS----",
              style: TextStyle(color: Colors.greenAccent, fontSize: 50),
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.check_circle),
                Text(
                  "Cheap",
                  style: TextStyle(fontSize: 30.0),

                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.check_circle),
                Text(
                  "Fuel Efficient",
                  style: TextStyle(fontSize: 30.0),

                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.check_circle),
                Text(
                  "Bluetooth Feature and GPS",
                  style: TextStyle(fontSize: 30.0),

                )
              ],
            )
          ],
        ),
      ),
    );
  }

  

}



