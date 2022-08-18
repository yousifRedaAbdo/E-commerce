import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:yousif2_flutter/cart.dart';
import 'package:yousif2_flutter/checkout.dart';
import 'package:yousif2_flutter/editProfile.dart';
import 'package:yousif2_flutter/homee.dart';
import 'package:yousif2_flutter/order_history.dart';
import 'package:yousif2_flutter/wishlist.dart';

class profile1 extends StatefulWidget {
  const profile1({Key? key}) : super(key: key);


  @override
  State<profile1> createState() => _profile1State();
}

class _profile1State extends State<profile1> {
  @override
  Widget build(BuildContext context) {
    return  const ZoomDrawer(
      menuScreen: drawerScreen(),
      mainScreen: profile(),
      borderRadius: 20,
      showShadow: true,
      angle: 0,
      menuBackgroundColor: Color.fromRGBO(67, 34, 103, 1.0) ,
    );

  }
}

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  Color purple=Color.fromRGBO(67, 34, 103, 1.0);
  Color lpurplet=Color.fromRGBO(159, 148, 171, 1.0);
  Color lOrange=Color.fromRGBO(233, 188, 107, 1.0);
  Color orange =Color.fromRGBO(233, 144, 0, 1.0);
  Color white=Color.fromRGBO(254, 254, 254, 1.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body:ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                  color: purple,
                ),
                height:270,
                width:MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:  [
                          DrawerWidget(),
                          Text("Profile",style: TextStyle(fontSize: 25,color:white),),
                          InkWell(
                              onTap:(){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const homeScreen2()
                                    )
                                );
                              } ,
                              child: Image.asset("assets/image/home.png"))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0,bottom: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: const Image(image: NetworkImage(
                              "https://7znn.net/wp-content/uploads/2019/08/3052-11.jpg"),
                            fit: BoxFit.cover,
                            height: 90,
                            width: 90,
                          ),
                        ),
                      ),
                      Text("Esraa Emad Hamdy",style:TextStyle(color: white,fontSize: 20),),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                        child: Text("esraa00000000emad@gmail.com",style:TextStyle(color: orange,fontSize: 15),),
                      )



                    ],
                  ),


                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 40,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => editProfile()),);},

                  child:Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Container(
                      height: 50,
                      width:MediaQuery.of(context).size.width/1.3,
                      decoration: BoxDecoration(
                        color: purple,
                        borderRadius: BorderRadius.all(Radius.circular(10.0),
                        ),),
                      child: Row(
                        children: [
                          Container(

                            margin: const EdgeInsets.all( 10.0),
                            height: 30,
                            width: 30,
                            child: Image.asset('assets/image/edit.png'),
                          ),
                          Text("Edit Profile",style:TextStyle(color: white,fontSize: 17),)
                        ],
                      ),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: InkWell(onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const cart1()
                        )
                    );
                  },
                    child: Container(
                      height: 50,
                      width:MediaQuery.of(context).size.width/1.3,
                      decoration: BoxDecoration(
                        color: purple,
                        borderRadius: BorderRadius.all(Radius.circular(10.0),
                        ),),
                      child: Row(
                        children: [
                          Container(

                            margin: const EdgeInsets.all( 10.0),
                            height: 30,
                            width: 30,
                            child: Image.asset('assets/image/shopping-bag-1 1.png'),
                          ),
                          Text("Cart",style:TextStyle(color: white,fontSize: 17),)
                        ],
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Container(
                    height: 50,
                    width:MediaQuery.of(context).size.width/1.3,
                    decoration: BoxDecoration(
                      color: purple,
                      borderRadius: BorderRadius.all(Radius.circular(10.0),
                      ),),
                    child:
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const homeScreen3()
                            )
                        );
                    },
                      child: Row(
                        children: [
                          Container(

                            margin: const EdgeInsets.all( 10.0),
                            height: 30,
                            width: 30,
                            child: Image.asset('assets/image/path-9.png'),
                          ),
                          Text("Wishlist",style:TextStyle(color: white,fontSize: 17),)
                        ],
                      ),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: InkWell(onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const order1()
                        )
                    );
                  },
                    child: Container(
                      height: 50,
                      width:MediaQuery.of(context).size.width/1.3,
                      decoration: BoxDecoration(
                        color: purple,
                        borderRadius: BorderRadius.all(Radius.circular(10.0),
                        ),),
                      child: Row(
                        children: [
                          Container(

                            margin: const EdgeInsets.all( 10.0),
                            height: 30,
                            width: 30,
                            child: Image.asset('assets/image/path-10.png'),
                          ),
                          Text("Order History",style:TextStyle(color: white,fontSize: 17),)
                        ],
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: InkWell(onTap:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const checkOut()
                        )
                    );
                  } ,
                    child: Container(
                      height: 50,
                      width:MediaQuery.of(context).size.width/1.3,
                      decoration: BoxDecoration(
                        color: purple,
                        borderRadius: BorderRadius.all(Radius.circular(10.0),
                        ),),
                      child: Row(
                        children: [
                          Container(

                              margin: const EdgeInsets.all( 10.0),
                              height: 30,
                              width: 30,
                              child: Icon(Icons.credit_card,color: orange,)),
                          Text("Cards",style:TextStyle(color: white,fontSize: 17),)
                        ],
                      ),

                    ),
                  ),
                ),


              ],
            ),],
        )

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