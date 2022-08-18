import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:yousif2_flutter/homee.dart';
import 'package:yousif2_flutter/wishlist.dart';
class homeScreen4 extends StatefulWidget {
  const homeScreen4({Key? key}) : super(key: key);


  @override
  State<homeScreen4> createState() => _homeScreen4State();
}

class _homeScreen4State extends State<homeScreen4> {
  @override
  Widget build(BuildContext context) {
    return  const ZoomDrawer(
      menuScreen: drawerScreen(),
      mainScreen: homeScreen5(),
      borderRadius: 20,
      showShadow: true,
      angle: 0,
      menuBackgroundColor: Color.fromRGBO(67, 34, 103, 1.0) ,
    );

  }
}

class homeScreen5 extends StatefulWidget {
  const homeScreen5({Key? key}) : super(key: key);

  @override
  State<homeScreen5> createState() => _homeScreen5State();
}

class _homeScreen5State extends State<homeScreen5> {
  bool click = true;
  bool click2 = true;
  bool click3 = true;
  bool click4 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
      Stack(
         children:
      [
        Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
        child: Container(
          color: const Color.fromRGBO(67, 34, 103, 1.0),
          height:80,
        ),
      ),
    ),
    Padding(
          padding: const EdgeInsets.only(top: 30),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:
    [
    const Padding(
         padding: const EdgeInsets.only(left: 40),
            child: DrawerWidget()
    ),
        const Text("Wishlist",style: TextStyle(
          fontSize: 25,
          fontFamily:"JosefinSans",
           color: Colors.white
      ),
    ),
    Padding(
    padding: const EdgeInsets.only(right: 40),
    child: InkWell(onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const homeScreen2()
            )
        );
      } ,
        child: Image.asset("assets/image/home.png"))
           )
         ],
        ),
      ),
     ]
    ),
    Padding(
           padding: const EdgeInsets.only(bottom: 30.0,left: 30, right: 20,top: 20),
                child: Row(
                  children:[
                      const Text("May your wishes come true",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,fontFamily:"JosefinSans", )),
                      const SizedBox(width: 30),
                            InkWell(
                               onTap: (){
                                 Navigator.push(
                                       context,
                               MaterialPageRoute(
                                   builder: (context) => const homeScreen3()
          )
        );
      },
                                    child: Image.asset("assets/image/path-8.png", color:const Color.fromRGBO(67, 34, 103, 1.0), ),
        ),
                    const SizedBox(width: 5),
                    Image.asset("assets/image/path-7.png", color:const Color.fromRGBO(233, 144, 0, 1.0) ),

        ],
      ),
      ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    height: 120,
                    width: 320,
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      height: 120,
                         width: 120,
                         fit: BoxFit.cover,
                         image:NetworkImage("https://i.pinimg.com/236x/fa/f3/cd/faf3cd02b7949f01f9c4558c99edfb60.jpg"),
                    ),
                  ),
                ),
                   Padding(
                     padding: const EdgeInsets.only(top: 20),
                     child: Column(
                      children:[
                        const Padding(
                          padding: EdgeInsets.only(left: 140,top: 10),
                          child: Text("Womens Fall winter Scarf",style: TextStyle(fontFamily: "JosefinSans",fontSize: 13,fontWeight: FontWeight.bold),),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 80,top: 5),
                          child: const Text("American Trends",style: TextStyle(fontFamily: "JosefinSans",fontSize: 12,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 165,top: 5),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                              Icon(Icons.star,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                              Icon(Icons.star,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                              Icon(Icons.star,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                              Icon(Icons.star_half,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                              Text("+23",style:TextStyle(fontFamily: "JosefinSans",fontSize: 10))
                            ],
                          ),
                        ),
                      ],
                  ),
                   ),
                Padding(
                  padding: EdgeInsets.only(left: 290,top: 90),
                  child:Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                      color: click? Color.fromRGBO(67, 34, 103, 1.0):  Colors.white,
                    ),
                    height: 30,
                    width: 40,
                    child: IconButton (
                        onPressed: (){
                          setState(() {
                            click = !click;
                          });
                        }, icon:
                    Icon(
                      click? Icons.favorite: Icons.favorite_border,size: 21,),

                        color: click? Color.fromRGBO(233, 144, 0, 1.0) : Colors.black
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    height: 120,
                    width: 320,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                      image:NetworkImage("https://i.pinimg.com/236x/fa/f3/cd/faf3cd02b7949f01f9c4558c99edfb60.jpg"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children:[
                      const Padding(
                        padding: EdgeInsets.only(left: 140,top: 10),
                        child: Text("Womens Fall winter Scarf",style: TextStyle(fontFamily: "JosefinSans",fontSize: 13,fontWeight: FontWeight.bold),),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 80,top: 5),
                        child: const Text("American Trends",style: TextStyle(fontFamily: "JosefinSans",fontSize: 12,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 165,top: 5),
                        child: Row(
                          children: [
                            Icon(Icons.star,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                            Icon(Icons.star,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                            Icon(Icons.star,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                            Icon(Icons.star,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                            Icon(Icons.star_half,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                            Text("+23",style:TextStyle(fontFamily: "JosefinSans",fontSize: 10))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 290,top: 90),
                  child:Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                      color: click2? Color.fromRGBO(67, 34, 103, 1.0):  Colors.white,
                    ),
                    height: 30,
                    width: 40,
                    child: IconButton (
                        onPressed: (){
                          setState(() {
                            click2 = !click2;
                          });
                        }, icon:
                    Icon(
                      click2? Icons.favorite: Icons.favorite_border,size: 21,),

                        color: click2? Color.fromRGBO(233, 144, 0, 1.0) : Colors.black
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    height: 120,
                    width: 320,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                      image:NetworkImage("https://i.pinimg.com/236x/fa/f3/cd/faf3cd02b7949f01f9c4558c99edfb60.jpg"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children:[
                      const Padding(
                        padding: EdgeInsets.only(left: 140,top: 10),
                        child: Text("Womens Fall winter Scarf",style: TextStyle(fontFamily: "JosefinSans",fontSize: 13,fontWeight: FontWeight.bold),),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 80,top: 5),
                        child: const Text("American Trends",style: TextStyle(fontFamily: "JosefinSans",fontSize: 12,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 165,top: 5),
                        child: Row(
                          children: [
                            Icon(Icons.star,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                            Icon(Icons.star,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                            Icon(Icons.star,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                            Icon(Icons.star,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                            Icon(Icons.star_half,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                            Text("+23",style:TextStyle(fontFamily: "JosefinSans",fontSize: 10))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 290,top: 90),
                  child:Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                      color: click3? Color.fromRGBO(67, 34, 103, 1.0):  Colors.white,
                    ),
                    height: 30,
                    width: 40,
                    child: IconButton (
                        onPressed: (){
                          setState(() {
                            click3 = !click3;
                          });
                        }, icon:
                    Icon(
                      click3? Icons.favorite: Icons.favorite_border,size: 21,),

                        color: click3? Color.fromRGBO(233, 144, 0, 1.0) : Colors.black
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    height: 120,
                    width: 320,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                      image:NetworkImage("https://i.pinimg.com/236x/fa/f3/cd/faf3cd02b7949f01f9c4558c99edfb60.jpg"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children:[
                      const Padding(
                        padding: EdgeInsets.only(left: 140,top: 10),
                        child: Text("Womens Fall winter Scarf",style: TextStyle(fontFamily: "JosefinSans",fontSize: 13,fontWeight: FontWeight.bold),),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 80,top: 5),
                        child: const Text("American Trends",style: TextStyle(fontFamily: "JosefinSans",fontSize: 12,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 165,top: 5),
                        child: Row(
                          children: [
                            Icon(Icons.star,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                            Icon(Icons.star,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                            Icon(Icons.star,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                            Icon(Icons.star,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                            Icon(Icons.star_half,color: Color.fromRGBO(233, 144, 0, 1.0),size: 20,),
                            Text("+23",style:TextStyle(fontFamily: "JosefinSans",fontSize: 10))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 290,top: 90),
                  child:Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                      color: click4? Color.fromRGBO(67, 34, 103, 1.0):  Colors.white,
                    ),
                    height: 30,
                    width: 40,
                    child: IconButton (
                        onPressed: (){
                          setState(() {
                            click4 = !click4;
                          });
                        }, icon:
                    Icon(
                      click4? Icons.favorite: Icons.favorite_border,size: 21,),

                        color: click4? Color.fromRGBO(233, 144, 0, 1.0) : Colors.black
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
       ]
      )
     );
    }
   }
    class DrawerWidget extends StatelessWidget {
      const DrawerWidget({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return InkWell(
            onTap: () {
              ZoomDrawer.of(context)!.toggle();
            },
            child: Image.asset("assets/image/menu.png"));
      }
    }