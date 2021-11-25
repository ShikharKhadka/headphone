import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'chart.dart';
import 'model/headphones.dart';

class Headphone3 extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<Headphone3> {

  List<Headphone> headphones = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Expanded(
                flex:5,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10),bottomRight: Radius.circular(10))
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(Icons.arrow_back),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/h3.jpg"),
                                  fit: BoxFit.fitHeight
                              )
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:20.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Apple Headphones",style: GoogleFonts.lato(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),),
                                        Text("Noise Cancelling Wireless ",style: GoogleFonts.lato(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,fontSize: 20)),
                                        Text("Headphones ",style: GoogleFonts.lato(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,fontSize: 20)),
                                        SizedBox(height: 45,),
                                        Row(
                                          children: [
                                            Container(
                                              width: 5,
                                              height: 5,
                                              decoration:BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Colors.black
                                              ) ,
                                            ),
                                            SizedBox(width: 15,),
                                            Text("Active Noise Cancelling")
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 5,
                                              height: 5,
                                              decoration:BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Colors.black
                                              ) ,
                                            ),
                                            SizedBox(width: 15,),
                                            Text("Active Noise Cancelling")
                                          ],
                                        ),Row(
                                          children: [
                                            Container(
                                              width: 5,
                                              height: 5,
                                              decoration:BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Colors.black
                                              ) ,
                                            ),
                                            SizedBox(width: 15,),
                                            Text("Active Noise Cancelling")
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                        ),
                      )

                    ],
                  ),

                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Price",style: GoogleFonts.lato(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: Colors.yellow,fontSize: 20)),
                            Text('\$200',style: GoogleFonts.lato(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: Colors.yellow,fontSize: 30))
                          ],
                        ),
                        Spacer(),
                        ElevatedButton(
                            onPressed: (){
                              headphones.add(Headphone("Sony Headphones", 100));
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Chart(headphone: headphones)));
                            },
                            style:ElevatedButton.styleFrom(
                                primary: Colors.yellow
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.check_box,color: Colors.black,),
                                Text("Add to Chart",style: GoogleFonts.lato(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: Colors.black),)
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
