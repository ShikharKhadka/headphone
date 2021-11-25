import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/chart.dart';
import 'h1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key} ) : super(key: key);//this.title

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  int _currentState = 0;

   insideBody(){
    if(_currentState == 0){
      return Headphone1();
    }
    if(_currentState == 1){
      return Chart(headphone: []);
    }
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;

    return  Scaffold(
      body: insideBody(),
      bottomNavigationBar: Container(
        width:width/4 ,
        child: BottomNavigationBar(
          currentIndex: _currentState,
          onTap: (index){
            setState(() {
              _currentState = index;
              print(_currentState);
            });
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon:Icon(Icons.home,), label: "Home"),
            BottomNavigationBarItem(icon:Icon(Icons.add_chart,), label: "Chart"),
            BottomNavigationBarItem(icon:Icon(Icons.person,), label: "Account"),
          ],
        ),
      ),
    );
  }
}

