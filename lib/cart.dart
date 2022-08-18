import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:yousif2_flutter/checkout.dart';
import 'package:yousif2_flutter/homee.dart';
class cart1 extends StatefulWidget {
  const cart1({Key? key}) : super(key: key);


  @override
  State<cart1> createState() => _cart1State();
}

class _cart1State extends State<cart1> {
  @override
  Widget build(BuildContext context) {
    return  const ZoomDrawer(
      menuScreen: drawerScreen(),
      mainScreen: cart(),
      borderRadius: 20,
      showShadow: true,
      angle: 0,
      menuBackgroundColor: Color.fromRGBO(67, 34, 103, 1.0) ,
    );

  }
}
class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  int counter = 1;
  int counter2 = 1;
  int counter3 = 1;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
              children:
              [ Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
                  child: Container(
                    color: const Color.fromRGBO(67, 34, 103, 1.0),
                    height:130,
                  ),
                ),
              ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: DrawerWidget()
                      ),
                      const Text("Cart",style: TextStyle(
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
                  padding: const EdgeInsets.only(top: 110,left: 40,right: 40,bottom: 20),
                  child:
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                          //labelText: "Type a Product Name",
                          hintText: "Type a Product Name ",
                          prefixIcon: const Icon(Icons.search,color: Colors.black87,size: 30,),
                          suffixIcon: Image.asset("assets/image/Group 288.png",)
                      ),
                    ),
                  ),
                ),
              ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Product: 3",style: TextStyle(fontFamily: "JosefinSans"),),
              Text("Subtotal: 35.97",style: TextStyle(fontFamily: "JosefinSans"),),
              Text("Taxes: 15.99",style: TextStyle(fontFamily: "JosefinSans"),),
            ],
          ),
          const SizedBox(height: 35,),
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
                padding: const EdgeInsets.only(left: 320),
                child: Image.asset("assets/image/Group 414.png"),
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
                padding: const EdgeInsets.only(left: 240,top: 90),
                child:Container(
                  decoration: const BoxDecoration(
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                      color: const Color.fromRGBO(67, 34, 103, 1.0)
                  ),
                  height: 30,
                  width: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: InkWell(
                            onTap: (){
                              setState(() {
                                counter--;
                                print(counter);
                              });
                            },
                             child:const Icon(Icons.minimize,size: 25,color: Color.fromRGBO(233, 144, 0, 1.0),)
                        ),
                      ),
                       Text(
                          "$counter",
                          style: TextStyle(
                              fontSize: 20.0,
                            color: Colors.white,
                            fontFamily: "JosefinSans")
                          ),
                      InkWell(
                          onTap: (){
                            setState(() {
                              counter++;
                              print(counter);
                            });
                          },
                          child:Icon(Icons.add,size: 25,color: Color.fromRGBO(233, 144, 0, 1.0),)
                      ),

                    ],
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
                padding: const EdgeInsets.only(left: 320),
                child: Image.asset("assets/image/Group 414.png"),
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
                padding: const EdgeInsets.only(left: 240,top: 90),
                child:Container(
                  decoration: const BoxDecoration(
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                      color: const Color.fromRGBO(67, 34, 103, 1.0)
                  ),
                  height: 30,
                  width: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: InkWell(
                            onTap: (){
                              setState(() {
                                counter2--;
                                print(counter2);
                              });
                            },
                            child:const Icon(Icons.minimize,size: 25,color: Color.fromRGBO(233, 144, 0, 1.0),)
                        ),
                      ),
                      Text(
                          "$counter2",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontFamily: "JosefinSans")
                      ),
                      InkWell(
                          onTap: (){
                            setState(() {
                              counter2++;
                              print(counter2);
                            });
                          },
                          child:Icon(Icons.add,size: 25,color: Color.fromRGBO(233, 144, 0, 1.0),)
                      ),

                    ],
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
                padding: const EdgeInsets.only(left: 320),
                child: Image.asset("assets/image/Group 414.png"),
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
                padding: const EdgeInsets.only(left: 240,top: 90),
                child:Container(
                  decoration: const BoxDecoration(
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                      color: const Color.fromRGBO(67, 34, 103, 1.0)
                  ),
                  height: 30,
                  width: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: InkWell(
                            onTap: (){
                              setState(() {
                                counter3--;
                                print(counter3);
                              });
                            },
                            child:const Icon(Icons.minimize,size: 25,color: Color.fromRGBO(233, 144, 0, 1.0),)
                        ),
                      ),
                      Text(
                          "$counter3",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontFamily: "JosefinSans")
                      ),
                      InkWell(
                          onTap: (){
                            setState(() {
                              counter3++;
                              print(counter3);
                            });
                          },
                          child:Icon(Icons.add,size: 25,color: Color.fromRGBO(233, 144, 0, 1.0),)
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20,),
          Container(
              color: const Color.fromRGBO(233, 188, 107, 1.0),
            width:double.infinity,
            height: 65,
            child: ElevatedButton(

                style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(67, 34, 103, 1.0),)
                ) ,
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const checkOut1()
                      )
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/image/Icon_Credit Card.png",color:Colors.orange),
                    SizedBox(width: 10,),
                    Text("Checkout",style: TextStyle(fontFamily: "JosefinSans",color: Colors.white,fontSize: 20),)
                  ],

    )
            ),
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