import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:yousif2_flutter/cart.dart';
import 'package:yousif2_flutter/checkout.dart';
import 'package:another_stepper/another_stepper.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:yousif2_flutter/checkout3.dart';
import 'package:yousif2_flutter/homee.dart';

class checkOut2 extends StatefulWidget {
  const checkOut2({Key? key}) : super(key: key);


  @override
  State<checkOut2> createState() => _checkOut2State();
}

class _checkOut2State extends State<checkOut2> {
  @override
  Widget build(BuildContext context) {
    return  const ZoomDrawer(
      menuScreen: drawerScreen(),
      mainScreen: checkOutt(),
      borderRadius: 20,
      showShadow: true,
      angle: 0,
      menuBackgroundColor: Color.fromRGBO(67, 34, 103, 1.0) ,
    );
  }
}
class checkOutt extends StatefulWidget {
  const checkOutt({Key? key}) : super(key: key);

  @override
  State<checkOutt> createState() => _checkOuttState();
}

class _checkOuttState extends State<checkOutt> {
  bool click = true;
  bool click2 = true;
  bool click3 = true;
  bool click4 = true;

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
                    activeIndex: 1,

                  ),
                ),
              ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                 color: click? Colors.grey.shade300 : Color.fromRGBO(233, 144, 0, 1.0),
                ),
                height: 60,
                width: 90,
                child: IconButton (
                  onPressed: (){
                    setState(() {
                      click = !click;
                      click3 = true;
                      click2 = true;
                    });
                  }, icon:
                Image.asset(
                     "assets/image/icons8_PayPal_1.png",
                  color: click? Colors.grey : Colors.white,
                ),
              ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: click2? Colors.grey.shade300 : Color.fromRGBO(233, 144, 0, 1.0),
                ),
                height: 60,
                width: 90,
                child: IconButton (
                  onPressed: (){
                    setState(() {
                      click2 = !click2;
                      click = true;
                      click3 = true;
                    });
                  }, icon:
                Image.asset(
                    "assets/image/Icon_Credit Card.png",
                  color: click2? Colors.grey : Colors.white,
                ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: click3? Colors.grey.shade300 : Color.fromRGBO(233, 144, 0, 1.0),
                ),
                height: 60,
                width: 90,
                child: IconButton (
                  onPressed: (){
                    setState(() {
                      click3 = !click3;
                      click2 = true;
                      click = true;
                    });
                  }, icon:
                Image.asset(
                    "assets/image/Icon_Saved Cards.png",
                  color: click3? Colors.grey : Colors.white,
                ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text("Name on Card",style: TextStyle(color: Colors.grey),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 10),
            child: TextField(
              decoration: InputDecoration(
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
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
          SizedBox(height: 20,),
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

                  color: click4? Colors.black : Color.fromRGBO(233, 144, 0, 1.0),
                ),
                Text("Save this cart details",style: TextStyle(fontSize: 13),)
              ],
            ),
          ),
          SizedBox(height: 50),
          Row(
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
                              builder: (context) => const checkOut1()
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
                              builder: (context) => const checkOut3()
                          )
                      );
                    },
                    child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 25,fontFamily:"JosefinSans"),)
                ),
              ),
            ],
          ),


        ],
      ),
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