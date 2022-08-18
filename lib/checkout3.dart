import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:yousif2_flutter/checkout.dart';
import 'package:yousif2_flutter/checkout2.dart';
import 'package:yousif2_flutter/editcards.dart';
import 'package:yousif2_flutter/homee.dart';

class checkOut3 extends StatefulWidget {
  const checkOut3({Key? key}) : super(key: key);


  @override
  State<checkOut3> createState() => _checkOut3State();
}

class _checkOut3State extends State<checkOut3> {
  @override
  Widget build(BuildContext context) {
    return  const ZoomDrawer(
      menuScreen: drawerScreen(),
      mainScreen: checkouttt(),
      borderRadius: 20,
      showShadow: true,
      angle: 0,
      menuBackgroundColor: Color.fromRGBO(67, 34, 103, 1.0) ,
    );
  }
}
class checkouttt extends StatefulWidget {
  const checkouttt({Key? key}) : super(key: key);

  @override
  State<checkouttt> createState() => _checkoutttState();
}

class _checkoutttState extends State<checkouttt> {
  bool click = true;
  bool click2 = true;
  List<StepperData> stepperData = [
    StepperData(

      subtitle: "Address", title: '',
    ),
    StepperData(

      subtitle: "Payments", title: '',
    ),
    StepperData(
      subtitle: "Summary", title: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
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
                      height:150,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: DrawerWidget()
                      ),
                      const Text("Checkout",style: TextStyle(
                          fontSize: 25,
                          fontFamily:"JosefinSans",
                          color: Colors.white
                      ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: InkWell(
                              onTap:(){
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
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: AnotherStepper(
                    stepperList: stepperData,
                    stepperDirection: Axis.horizontal,
                    horizontalStepperHeight: 70,
                    gap: 50,
                    inverted: true,
                    barThickness: 1,
                    dotWidget: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Icon(Icons.circle, color: Colors.orange,size: 20,),
                    ),
                    activeBarColor: Colors.orange,
                    inActiveBarColor: Colors.white,
                    activeIndex: 2,

                  ),
                ),
              ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 30,),
              Text("Summary",style: TextStyle(fontFamily: "JosefinSans",fontSize: 23),),
            ],
          ),
          const SizedBox(height: 25,),
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
                      padding: EdgeInsets.only(left: 125,top: 10),
                      child: Text("Womens Fall winter Scarf",style: TextStyle(fontFamily: "JosefinSans",fontSize: 14,fontWeight: FontWeight.bold),),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 60,top: 5),
                      child: const Text("American Trends",style: TextStyle(fontFamily: "JosefinSans",fontSize: 12,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 159,top: 5),
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
                      padding: EdgeInsets.only(left: 125,top: 10),
                      child: Text("Womens Fall winter Scarf",style: TextStyle(fontFamily: "JosefinSans",fontSize: 13,fontWeight: FontWeight.bold),),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 60,top: 5),
                      child: const Text("American Trends",style: TextStyle(fontFamily: "JosefinSans",fontSize: 12,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 159,top: 5),
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
                      padding: EdgeInsets.only(left: 125,top: 10),
                      child: Text("Womens Fall winter Scarf",style: TextStyle(fontFamily: "JosefinSans",fontSize: 13,fontWeight: FontWeight.bold),),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 60,top: 5),
                      child: const Text("American Trends",style: TextStyle(fontFamily: "JosefinSans",fontSize: 12,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 159,top: 5),
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
            ],
          ),
          const SizedBox(height: 10,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 35),
                  Text("Shipping Address",style: TextStyle(fontSize: 20),),
                  SizedBox(width: 110,),
                  IconButton (
                    onPressed: (){
                      setState(() {
                        click = !click;
                      });
                    }, icon:
                  Icon(
                      click? Icons.check_circle_outline: Icons.check_circle,size: 30),

                    color: click? Colors.black : Color.fromRGBO(233, 144, 0, 1.0),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 9),
                child: Text("12, Bay brook, sharps Rd, Keilor East,",style: TextStyle(fontSize: 16),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 120,top: 8),
                child: Text("Melbourne, Australia",style: TextStyle(fontSize: 16),),
              ),
              InkWell(onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const checkOut()
                    )
                );
              },
                child: Padding(
                  padding: const EdgeInsets.only(right: 215,top: 8),
                  child: Text("change",style: TextStyle(fontSize: 15,color: Colors.red),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 185,top: 8),
                child: Text("Payment",style: TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50,top: 8),
                child: Row(
                  children: [
                    Image.asset("assets/image/Icon_MasterCard.png"),
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Master Card",style: TextStyle(color: Colors.grey),),
                        Text("**** **** **** 4543",style: TextStyle(fontSize: 14),),
                      ],
                    ),
                    SizedBox(width: 70),
                    IconButton (
                      onPressed: (){
                        setState(() {
                          click2 = !click2;
                        });
                      }, icon:
                    Icon(
                        click2? Icons.check_circle_outline: Icons.check_circle,size: 30),

                      color: click2? Colors.black : Color.fromRGBO(233, 144, 0, 1.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 215,top: 3),
                child: InkWell(onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const editcard1()
                      )
                  );
                },
                    child: Text("change",style: TextStyle(fontSize: 15,color: Colors.red),)),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: ElevatedButton(
                      style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white70)) ,
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const checkOut2()
                            )
                        );
                      },
                      child: Text("Back",style: TextStyle(color: Colors.orange,fontSize: 25,fontFamily:"JosefinSans"),)
                  ),
                ),
                SizedBox(width: 40,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: ElevatedButton(
                      style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)) ,
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const homeScreen2()
                            )
                        );
                      },
                      child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 25,fontFamily:"JosefinSans"),)
                  ),
                ),
              ],
            ),
          ),

        ],
      ) ,
    );
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