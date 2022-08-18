import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:yousif2_flutter/homee.dart';
class order1 extends StatefulWidget {
  const order1({Key? key}) : super(key: key);

  @override
  State<order1> createState() => _order1State();
}
class _order1State extends State<order1> {
  @override
  Widget build(BuildContext context) {
    return  const ZoomDrawer(
      menuScreen: drawerScreen(),
      mainScreen: order(),
      borderRadius: 20,
      showShadow: true,
      angle: 0,
      menuBackgroundColor: Color.fromRGBO(67, 34, 103, 1.0) ,
    );

  }
}

class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
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
                          const Text("Order History",style: TextStyle(
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
                padding: const EdgeInsets.only(top: 25),
                child: Stack(
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
                              children: const [
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
                      padding: const EdgeInsets.only(left: 290,top: 90),
                      child:Container(
                        decoration: const BoxDecoration(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                          color: const Color.fromRGBO(67, 34, 103, 1.0)
                        ),
                        height: 30,
                        width: 40,
                        child: IconButton (
                            onPressed: (){
                              setState(() {
                              });
                            }, icon:
                               const Icon(
                             Icons.share,
                              color:  const Color.fromRGBO(233, 144, 0, 1.0),
                                 size: 20,
                          ),
                      ),
                    ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
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
                            children: const [
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
                    padding: const EdgeInsets.only(left: 290,top: 90),
                    child:Container(
                      decoration: const BoxDecoration(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                          color: const Color.fromRGBO(67, 34, 103, 1.0)
                      ),
                      height: 30,
                      width: 40,
                      child: IconButton (
                        onPressed: (){
                          setState(() {
                          });
                        }, icon:
                      const Icon(
                        Icons.share,
                        color:  const Color.fromRGBO(233, 144, 0, 1.0),
                        size: 20,
                      ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
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
                            children: const [
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
                    padding: const EdgeInsets.only(left: 290,top: 90),
                    child:Container(
                      decoration: const BoxDecoration(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                          color: const Color.fromRGBO(67, 34, 103, 1.0)
                      ),
                      height: 30,
                      width: 40,
                      child: IconButton (
                        onPressed: (){
                          setState(() {
                          });
                        }, icon:
                      const Icon(
                        Icons.share,
                        color:  const Color.fromRGBO(233, 144, 0, 1.0),
                        size: 20,
                      ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
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
                            children: const [
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
                    padding: const EdgeInsets.only(left: 290,top: 90),
                    child:Container(
                      decoration: const BoxDecoration(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                          color: const Color.fromRGBO(67, 34, 103, 1.0)
                      ),
                      height: 30,
                      width: 40,
                      child: IconButton (
                        onPressed: (){
                          setState(() {
                          });
                        }, icon:
                      const Icon(
                        Icons.share,
                        color:  const Color.fromRGBO(233, 144, 0, 1.0),
                        size: 20,
                      ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
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
                            children: const [
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
                    padding: const EdgeInsets.only(left: 290,top: 90),
                    child:Container(
                      decoration: const BoxDecoration(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                          color: const Color.fromRGBO(67, 34, 103, 1.0)
                      ),
                      height: 30,
                      width: 40,
                      child: IconButton (
                        onPressed: (){
                          setState(() {
                          });
                        }, icon:
                      const Icon(
                        Icons.share,
                        color:  const Color.fromRGBO(233, 144, 0, 1.0),
                        size: 20,
                      ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
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
                            children: const [
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
                    padding: const EdgeInsets.only(left: 290,top: 90),
                    child:Container(
                      decoration: const BoxDecoration(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                          color: const Color.fromRGBO(67, 34, 103, 1.0)
                      ),
                      height: 30,
                      width: 40,
                      child: IconButton (
                        onPressed: (){
                          setState(() {
                          });
                        }, icon:
                      const Icon(
                        Icons.share,
                        color:  const Color.fromRGBO(233, 144, 0, 1.0),
                        size: 20,
                      ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
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
                            children: const [
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
                    padding: const EdgeInsets.only(left: 290,top: 90),
                    child:Container(
                      decoration: const BoxDecoration(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                          color: const Color.fromRGBO(67, 34, 103, 1.0)
                      ),
                      height: 30,
                      width: 40,
                      child: IconButton (
                        onPressed: (){
                          setState(() {
                          });
                        }, icon:
                      const Icon(
                        Icons.share,
                        color:  const Color.fromRGBO(233, 144, 0, 1.0),
                        size: 20,
                      ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
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
                            children: const [
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
                    padding: const EdgeInsets.only(left: 290,top: 90),
                    child:Container(
                      decoration: const BoxDecoration(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                          color: const Color.fromRGBO(67, 34, 103, 1.0)
                      ),
                      height: 30,
                      width: 40,
                      child: IconButton (
                        onPressed: (){
                          setState(() {
                          });
                        }, icon:
                      const Icon(
                        Icons.share,
                        color:  const Color.fromRGBO(233, 144, 0, 1.0),
                        size: 20,
                      ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
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