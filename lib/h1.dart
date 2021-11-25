import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/h2.dart';
import 'package:shopping_app/h3.dart';
import 'package:shopping_app/h4.dart';
import 'package:shopping_app/h5.dart';
import 'package:shopping_app/h6.dart';
import 'package:shopping_app/model/headphones.dart';
import 'package:shopping_app/second_page.dart';

class Headphone1 extends StatefulWidget {
  @override
  _Headphone1State createState() => _Headphone1State();
}

class _Headphone1State extends State<Headphone1> {

 // List<HeadPhones> headphones = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:10.0,right: 20),
                  child: Row(
                    children: [
                      Text("Discover",style: GoogleFonts.lato(fontStyle: FontStyle.normal,fontSize: 20,fontWeight: FontWeight.bold),),
                      const Spacer(),
                      const Icon(Icons.notifications),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.only(left:20,right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search Here" ,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        contentPadding: EdgeInsets.only(top: 5,bottom: 5,left:10),
                        suffixIcon: Icon(Icons.search)
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:10,right: 10),
                  child: Row(
                    children: [
                      Text("See Brand",style: GoogleFonts.lato(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),),
                      const Spacer(),
                      Text("See All",style: GoogleFonts.lato(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0,right:10),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Container(height:70,
                              decoration:  BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                image:const DecorationImage(
                                  image: AssetImage("assets/puma.png"),fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Expanded(child: Container(height:70,
                            decoration:  BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              image:const DecorationImage(
                                image: AssetImage("assets/nike.jpg"),fit: BoxFit.fitWidth,
                              ),
                            )
                        )),
                        const SizedBox(width: 10,),
                        Expanded(child: Container(height:70,
                          decoration:  BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            image:const DecorationImage(
                              image: AssetImage("assets/adidas.png"),fit: BoxFit.fitWidth,
                            ),
                          ),),),
                        const SizedBox(width: 10,),
                        Expanded(child: Container(height:70,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            image:const DecorationImage(
                              image: AssetImage("assets/zara.png"),fit: BoxFit.fitWidth,
                            ),
                          ),)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child:  Text("Headphones",style: GoogleFonts.lato(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                ),
                Flexible(
                  child: Container(
                      child:Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 200,
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          Flexible(
                                            child: GestureDetector(
                                              onTap: (){
                                                Navigator.push(context,PageRouteBuilder(
                                                    transitionDuration: Duration(seconds: 1),
                                                    transitionsBuilder: ( context,Animation<double>animation,Animation<double>secAnimation, Widget child){
                                                      animation = CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
                                                      return ScaleTransition(///for animation
                                                        alignment: Alignment.topLeft,
                                                        scale: animation,
                                                        child: child,//secondpage
                                                      );

                                                    },
                                                    pageBuilder: ( context,Animation<double>animation,Animation<double>secAnimation){
                                                      return SecondPage();// nextpage
                                                    }
                                                ),);
                                              },
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage("assets/h1.jpg"),
                                                        fit: BoxFit.fitWidth
                                                    )
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text("Sony Headphones and Headsets",style: GoogleFonts.acme(fontStyle: FontStyle.normal),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:10.0),
                                            child: Text("\$200.00",style: GoogleFonts.acme(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,fontSize: 12)),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Flexible(
                                    child: Container(
                                      color: Colors.white,
                                      height: 200,
                                      child: Column(
                                        children: [
                                          Flexible(
                                            child: GestureDetector(
                                              onTap: (){
                                                Navigator.push(context,PageRouteBuilder(
                                                    transitionDuration: Duration(seconds: 1),
                                                    transitionsBuilder: ( context,Animation<double>animation,Animation<double>secAnimation, Widget child){
                                                      animation = CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
                                                      return ScaleTransition(///for animation
                                                        alignment: Alignment.topLeft,
                                                        scale: animation,
                                                        child: child,//secondpage
                                                      );

                                                    },
                                                    pageBuilder: ( context,Animation<double>animation,Animation<double>secAnimation){
                                                      return Headphone2();// nextpage
                                                    }
                                                ),);
                                              },
                                              child: Container(
                                                height:150,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage("assets/h2.jpg"),
                                                        fit: BoxFit.fitHeight
                                                    )
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text("Sony Headphones and Headsets",style: GoogleFonts.acme(fontStyle: FontStyle.normal),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:10.0),
                                            child: Text("\$200.00",style: GoogleFonts.acme(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,fontSize: 12)),
                                          )
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                Flexible(child: Container(
                                  height: 200,
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: GestureDetector(
                                          onTap: (){
                                            Navigator.push(context,PageRouteBuilder(
                                                transitionDuration: Duration(seconds: 1),
                                                transitionsBuilder: ( context,Animation<double>animation,Animation<double>secAnimation, Widget child){
                                                  animation = CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
                                                  return ScaleTransition(///for animation
                                                    alignment: Alignment.topLeft,
                                                    scale: animation,
                                                    child: child,//secondpage
                                                  );

                                                },
                                                pageBuilder: ( context,Animation<double>animation,Animation<double>secAnimation){
                                                  return Headphone3();// nextpage
                                                }
                                            ),);
                                          },
                                          child: Container(
                                            height:150,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage("assets/h3.jpg"),
                                                    fit: BoxFit.fitHeight
                                                )
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text("Sony Headphones and Headsets",style: GoogleFonts.acme(fontStyle: FontStyle.normal),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:10.0),
                                        child: Text("\$200.00",style: GoogleFonts.acme(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,fontSize: 12)),
                                      )
                                    ],
                                  ),
                                ),
                                ),
                                const SizedBox(width: 10,),
                                Flexible(child:
                                Container(
                                  height: 200,
                                  color:Colors.white,
                                  child: Column(
                                    children: [
                                      Flexible(
                                        child: GestureDetector(
                                          onTap:(){
                                            Navigator.push(context,PageRouteBuilder(
                                                transitionDuration: Duration(seconds: 1),
                                                transitionsBuilder: ( context,Animation<double>animation,Animation<double>secAnimation, Widget child){
                                                  animation = CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
                                                  return ScaleTransition(///for animation
                                                    alignment: Alignment.topLeft,
                                                    scale: animation,
                                                    child: child,//secondpage
                                                  );

                                                },
                                                pageBuilder: ( context,Animation<double>animation,Animation<double>secAnimation){
                                                  return Headphone4();// nextpage
                                                }
                                            ),);
                                          },
                                          child: Container(
                                            height:150,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage("assets/h4.png"),
                                                    fit: BoxFit.fitHeight
                                                )
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text("Sony Headphones and Headsets",style: GoogleFonts.acme(fontStyle: FontStyle.normal),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:10.0),
                                        child: Text("\$200.00",style: GoogleFonts.acme(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,fontSize: 12)),
                                      )
                                    ],
                                  ),)),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                Flexible(
                                  child: GestureDetector(
                                    onTap:(){
                                      Navigator.push(context,PageRouteBuilder(
                                          transitionDuration: Duration(seconds: 1),
                                          transitionsBuilder: ( context,Animation<double>animation,Animation<double>secAnimation, Widget child){
                                            animation = CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
                                            return ScaleTransition(///for animation
                                              alignment: Alignment.topLeft,
                                              scale: animation,
                                              child: child,//secondpage
                                            );

                                          },
                                          pageBuilder: ( context,Animation<double>animation,Animation<double>secAnimation){
                                            return Headphone5();// nextpage
                                          }
                                      ),);
                                    },
                                    child: Container(
                                      height: 200,
                                      color: Colors.white,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            child: Container(
                                              height:150,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage("assets/h5.jpg"),
                                                      fit: BoxFit.fitHeight
                                                  )
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text("Sony Headphones and Headsets",style: GoogleFonts.acme(fontStyle: FontStyle.normal),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:10.0),
                                            child: Text("\$200.00",style: GoogleFonts.acme(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,fontSize: 12)),
                                          )
                                        ],
                                      ),),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Flexible(
                                    child: GestureDetector(
                                      onTap: (){
                                        Navigator.push(context,PageRouteBuilder(
                                            transitionDuration: Duration(seconds: 1),
                                            transitionsBuilder: ( context,Animation<double>animation,Animation<double>secAnimation, Widget child){
                                              animation = CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
                                              return ScaleTransition(///for animation
                                                alignment: Alignment.topLeft,
                                                scale: animation,
                                                child: child,//secondpage
                                              );

                                            },
                                            pageBuilder: ( context,Animation<double>animation,Animation<double>secAnimation){
                                              return Headphone6();// nextpage
                                            }
                                        ),);
                                      },
                                      child: Container(
                                        color: Colors.white,
                                        height: 200,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Flexible(
                                              child: Container(
                                                height:150,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage("assets/h6.webp"),
                                                        fit: BoxFit.fitHeight
                                                    )
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(10.0),
                                              child: Text("Sony Headphones and Headsets",style: GoogleFonts.acme(fontStyle: FontStyle.normal),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left:10.0),
                                              child: Text("\$200.00",style: GoogleFonts.acme(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,fontSize: 12)),
                                            )
                                          ],
                                        ),),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      )
                  ),
                )


              ],
            ),
          ],
        ),
      ),
    );
  }
}
