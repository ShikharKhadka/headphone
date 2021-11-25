import 'package:flutter/material.dart';
import 'package:shopping_app/second_page.dart';
import 'model/headphones.dart';

class Chart extends StatefulWidget {
  late List<Headphone>headphone;
  Chart({required this.headphone});
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  void initState() {
    super.initState();
  }


  SecondPage secondPage = SecondPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 700,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  height: 400,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text("Dasdasda"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                          itemCount: widget.headphone.length,
                          itemBuilder: (context,index){
                            return Column(
                              children: [
                                SizedBox(height: 20,),
                                Container(
                                  height: 200,
                                  width: 300,
                                  color: Colors.red,
                                  child: Text(widget.headphone[index].name),
                                ),
                              ],
                            );
                          },
                        ),
                ),
              ),
            ],
          ),
        ),
          ),
    );
  }
}
