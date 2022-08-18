import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:yousif2_flutter/checkout3.dart';
import 'package:yousif2_flutter/homee.dart';

class editcard1 extends StatefulWidget {
  const editcard1({Key? key}) : super(key: key);


  @override
  State<editcard1> createState() => _editcard1State();
}

class _editcard1State extends State<editcard1> {
  @override
  Widget build(BuildContext context) {
    return  const ZoomDrawer(
      menuScreen: drawerScreen(),
      mainScreen: editcards(),
      borderRadius: 20,
      showShadow: true,
      angle: 0,
      menuBackgroundColor: Color.fromRGBO(67, 34, 103, 1.0) ,
    );
  }
}

class editcards extends StatefulWidget {
  const editcards({Key? key}) : super(key: key);

  @override
  State<editcards> createState() => _editcardsState();
}

class _editcardsState extends State<editcards> {
  Color purple=const Color.fromRGBO(67, 34, 103, 1.0);
  Color lpurplet=const Color.fromRGBO(159, 148, 171, 1.0);
  Color lOrange=const Color.fromRGBO(233, 188, 107, 1.0);
  Color orange =const Color.fromRGBO(233, 144, 0, 1.0);
  Color white=const Color.fromRGBO(254, 254, 254, 1.0);
  bool click4 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height:80,
            width:MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: purple,
              borderRadius: const BorderRadius.only(
                bottomRight: const Radius.circular(10.0),
                bottomLeft: const Radius.circular(10.0),
              ),),
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0,left: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:  [
                        DrawerWidget(),
                        Text("Edit Cards",style: TextStyle(fontSize: 25,color:white),),
                        InkWell(
                            onTap:(){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const homeScreen2()
                                  )
                              );
                            }, child: Image.asset("assets/image/home.png")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: CarouselSlider(
                items: [
                 Image.asset("assets/image/fbe5bafa-91ca-48d3-a501-29b907f7c2cd.jpg"),
                  Image.asset("assets/image/fbe5bafa-91ca-48d3-a501-29b907f7c2cd.jpg"),
                  Image.asset("assets/image/fbe5bafa-91ca-48d3-a501-29b907f7c2cd.jpg"),
                ],
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                )
            ),
          ),
          const SizedBox(height: 30,),
          const Padding(
        padding: EdgeInsets.only(left: 30),
        child: Text("Name on Card",style: TextStyle(color: Colors.grey),),),
          const Padding(
            padding: EdgeInsets.only(left: 30,right: 10),
            child: TextField(
              decoration: InputDecoration(
              ),
            ),
          ),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text("Card Number",style: TextStyle(color: Colors.grey),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 10),
            child: TextField(
              decoration: InputDecoration(
                  suffixIcon: Image.asset("assets/image/Icon_MasterCard.png")
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 33),
                    child: Text("Expiry Date",style: TextStyle(color: Colors.grey),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 33,right: 170),
                    child: TextField(
                      decoration: InputDecoration(
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 190),
                child: Container(
                  color: Colors.white.withOpacity(0),
                  height: 80,
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 33),
                        child: Text("CVV",style: TextStyle(color: Colors.grey),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20,right: 10),
                        child: TextField(
                          decoration: InputDecoration(
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton (
                  onPressed: (){
                    setState(() {
                      click4 = !click4;
                    });
                  }, icon:
                Icon(
                    click4? Icons.check_circle_outline: Icons.check_circle,size: 30),

                  color: click4? Colors.black : const Color.fromRGBO(233, 144, 0, 1.0),
                ),
                const Text("Save this cart details",style: const TextStyle(fontSize: 13),)
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const checkOut3()
                      )
                  );
                },
                child:Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                    color: orange,
                    borderRadius: const BorderRadius.all(Radius.circular(40.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),

                  child: Center(
                    child: Container(
                      height: 32,
                      width: 97,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: const BorderRadius.all(Radius.circular(40.0),
                        ),),
                      child: Center(child: Text("Back",style: TextStyle(color: orange,fontSize: 15),)),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 40,),
              InkWell(onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const homeScreen2()
                    )
                );
              },
                child: Container(
                  height: 35,
                  width: 100,

                  decoration: BoxDecoration(
                    color: orange,
                    borderRadius: const BorderRadius.all(Radius.circular(40.0),

                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(child: Text("Next",style: TextStyle(color: white,fontSize: 15),)),
                ),
              ),
            ],
          )
        ],
      ),    );
  }
}
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
        onTap:(){
          ZoomDrawer.of(context)!.toggle();
        },
        child: Image.asset("assets/image/menu.png"));
  }
}