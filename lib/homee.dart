import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:yousif2_flutter/cart.dart';
import 'package:yousif2_flutter/next2.dart';
import 'package:yousif2_flutter/order.dart';
import 'package:yousif2_flutter/order_history.dart';
import 'package:yousif2_flutter/profile.dart';
import 'package:yousif2_flutter/wishlist.dart';

class homeScreen2 extends StatefulWidget {
  const homeScreen2({Key? key}) : super(key: key);


  @override
  State<homeScreen2> createState() => _homeScreen2State();
}

class _homeScreen2State extends State<homeScreen2> {
  @override
  Widget build(BuildContext context) {
    return  const ZoomDrawer(
      menuScreen: drawerScreen(),
      mainScreen: e_commerce(),
      borderRadius: 20,
      showShadow: true,
      angle: 0,
      menuBackgroundColor: Color.fromRGBO(67, 34, 103, 1.0) ,
    );

  }
}

class e_commerce extends StatefulWidget {
  const e_commerce({Key? key}) : super(key: key);

  @override
  State<e_commerce> createState() => _e_commerceState();
}

class _e_commerceState extends State<e_commerce> {
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
                    const Text("Home",style: TextStyle(
                        fontSize: 25,
                        fontFamily:"JosefinSans",
                        color: Colors.white
                    ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: InkWell(onTap:(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const cart1()
                              )
                          );
                        },
                            child: Image.asset("assets/image/shopping-bag.png"))
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
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0,left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Category",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,fontFamily:"JosefinSans", )),
                Text("See all (9)",style: TextStyle(fontFamily:"JosefinSans"),)
              ],
            ),
          ),
          SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Row(
                      children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Stack(
                                children: [
                                  const Image(
                                    image: NetworkImage("https://i.pinimg.com/236x/fa/f3/cd/faf3cd02b7949f01f9c4558c99edfb60.jpg"),
                                    height: 110,
                                    width: 110,
                                      fit: BoxFit.cover
                                  ),
                                  Container(
                                    color: Colors.white.withOpacity(0.4),
                                    width:110 ,
                                    height:110 ,
                                    padding: const EdgeInsets.symmetric(vertical: 40),
                                    child: const Text(
                                        "Fashion",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        fontFamily:"JosefinSans"
                                      ),
                                    ),
                                  )
                                ],

                              ),
                            ),
                        const SizedBox(width: 15),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Stack(
                              children: [
                                const Image(
                                  image: NetworkImage("https://media.istockphoto.com/photos/mock-up-blank-empty-digital-tablet-screen-on-beige-fashion-women-picture-id1181376840?k=20&m=1181376840&s=612x612&w=0&h=nQ-zAJV0BmTKw-GNQGuM2NX5t1WzS8AbFB9ykV4if-4="),
                                  height: 110,
                                  width: 110,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  color: Colors.white.withOpacity(0.4),
                                  width:110 ,
                                  height:110 ,
                                  padding: const EdgeInsets.symmetric(vertical: 40),
                                  child: const Text(
                                    "Accessories",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        fontFamily:"JosefinSans"
                                    ),
                                  ),
                                )
                              ],

                            ),
                          ),
                        const SizedBox(width: 15),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Stack(
                              children: [
                                const Image(
                                  image: NetworkImage("https://woodtailorsclub.com/wp-content/uploads/home-office-1.jpg"),
                                  height: 110,
                                  width: 110,
                                    fit: BoxFit.cover
                                ),
                                Container(
                                  color: Colors.white.withOpacity(0.4),
                                  width:110 ,
                                  height:110 ,
                                  padding: const EdgeInsets.symmetric(vertical: 40),
                                  child: const Text(
                                    "Home office",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        fontFamily:"JosefinSans"
                                    ),
                                  ),
                                )
                              ],

                            ),
                          ),
                        const SizedBox(width: 15),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Stack(
                              children: [
                                const Image(
                                    image: NetworkImage("https://i.pinimg.com/236x/fa/f3/cd/faf3cd02b7949f01f9c4558c99edfb60.jpg"),
                                    height: 110,
                                    width: 110,
                                    fit: BoxFit.cover
                                ),
                                Container(
                                  color: Colors.white.withOpacity(0.4),
                                  width:110 ,
                                  height:110 ,
                                  padding: const EdgeInsets.symmetric(vertical: 40),
                                  child: const Text(
                                    "Fashion",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        const SizedBox(width: 15),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Stack(
                              children: [
                                const Image(
                                  image: NetworkImage("https://media.istockphoto.com/photos/mock-up-blank-empty-digital-tablet-screen-on-beige-fashion-women-picture-id1181376840?k=20&m=1181376840&s=612x612&w=0&h=nQ-zAJV0BmTKw-GNQGuM2NX5t1WzS8AbFB9ykV4if-4="),
                                  height: 110,
                                  width: 110,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  color: Colors.white.withOpacity(0.4),
                                  width:110 ,
                                  height:110 ,
                                  padding: const EdgeInsets.symmetric(vertical: 40),
                                  child: const Text(
                                    "Accessories",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        fontFamily:"JosefinSans"
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        const SizedBox(width: 15),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Stack(
                              children: [
                                const Image(
                                    image: NetworkImage("https://woodtailorsclub.com/wp-content/uploads/home-office-1.jpg"),
                                    height: 110,
                                    width: 110,
                                    fit: BoxFit.cover
                                ),
                                Container(
                                  color: Colors.white.withOpacity(0.4),
                                  width:110 ,
                                  height:110 ,
                                  padding: const EdgeInsets.symmetric(vertical: 40),
                                  child: const Text(
                                    "Home office",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        fontFamily:"JosefinSans"
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        const SizedBox(width: 15),
                          ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Stack(
                            children: [
                              const Image(
                                  image: NetworkImage("https://i.pinimg.com/236x/fa/f3/cd/faf3cd02b7949f01f9c4558c99edfb60.jpg"),
                                  height: 110,
                                  width: 110,
                                  fit: BoxFit.cover
                              ),
                              Container(
                                color: Colors.white.withOpacity(0.4),
                                width:110 ,
                                height:110 ,
                                padding: const EdgeInsets.symmetric(vertical: 40),
                                child: const Text(
                                  "Fashion",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      fontFamily:"JosefinSans"
                                  ),
                                ),
                              )
                            ],

                          ),
                        ),
                        const SizedBox(width: 15),
                          ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Stack(
                            children: [
                              const Image(
                                image: NetworkImage("https://media.istockphoto.com/photos/mock-up-blank-empty-digital-tablet-screen-on-beige-fashion-women-picture-id1181376840?k=20&m=1181376840&s=612x612&w=0&h=nQ-zAJV0BmTKw-GNQGuM2NX5t1WzS8AbFB9ykV4if-4="),
                                height: 110,
                                width: 110,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                color: Colors.white.withOpacity(0.4),
                                width:110 ,
                                height:110 ,
                                padding: const EdgeInsets.symmetric(vertical: 40),
                                child: const Text(
                                  "Accessories",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      fontFamily:"JosefinSans"
                                  ),
                                ),
                              )
                            ],

                          ),
                        ),
                        const SizedBox(width: 15),
                          ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Stack(
                            children: [
                              const Image(
                                  image: NetworkImage("https://woodtailorsclub.com/wp-content/uploads/home-office-1.jpg"),
                                  height: 110,
                                  width: 110,
                                  fit: BoxFit.cover
                              ),
                              Container(
                                color: Colors.white.withOpacity(0.4),
                                width:110 ,
                                height:110 ,
                                padding: const EdgeInsets.symmetric(vertical: 40),
                                child: const Text(
                                  "Home office",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      fontFamily:"JosefinSans"
                                  ),
                                ),
                              )
                            ],

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 230,
                  width: 360,
                  padding: const EdgeInsets.only(left:15,top: 30,right:10,bottom: 15),
                  child: const Image(
                      image: NetworkImage("https://i.ytimg.com/vi/NGEANy6je_U/maxresdefault.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 230,
                  width: 360,
                  padding: const EdgeInsets.only(left: 15,top: 30,right:10,bottom: 15),
                  child: const Image(
                    image: NetworkImage("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/watch-sale-ad-promote-template-design-7690eb14f98018ce92ab0a7691be3a5b_screen.jpg?ts=1596463884"),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 230,
                  width: 360,
                  padding: const EdgeInsets.only(left:15,top: 30,right:10,bottom: 15),
                  child: const Image(
                    image: NetworkImage("https://thumbs.dreamstime.com/z/sale-banners-women-clothing-accessories-background-big-banner-low-price-summer-discount-shopping-center-store-dress-155683801.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 230,
                  width: 360,
                  padding: const EdgeInsets.only(left:15,top: 30,right:10,bottom: 15),
                  child: const Image(
                    image: NetworkImage("https://www.shopickr.com/wp-content/uploads/2015/06/amazon-india-chumbak-gifts-home-decor-sale-6-29-2015-555x250.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
                "Popular",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                  fontFamily:"JosefinSans"
              ),
            ),
          ),
          const SizedBox(height: 5),
          Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ClipRRect(
                        borderRadius:const BorderRadius.only(topLeft: const Radius.circular(20),topRight:Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: const Radius.circular(20), ),
                        child: InkWell(onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const order2()
                              )
                          );
                        },
                          child: Container(
                            child: const Image(
                              image:NetworkImage("https://i.pinimg.com/236x/fa/f3/cd/faf3cd02b7949f01f9c4558c99edfb60.jpg"),
                              height: 200,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                     ),
                           Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 22),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: InkWell(onTap: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const order2()
                                        )
                                    );
                                  },
                                    child: Container(
                                      color: Colors.white,
                                      child: const Padding(
                                        padding: EdgeInsets.only(right: 5,left: 5,top: 2,bottom: 2),
                                        child: Text("15% OFF",style: TextStyle(color:Color.fromRGBO(233, 144, 0, 1.0),fontSize: 12),),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                               Padding(
                                padding: EdgeInsets.only(left: 50,top: 25),
                                child: CircleAvatar(
                                   radius: 17,
                                  backgroundColor: click? Colors.white :  Color.fromRGBO(67, 34, 103, 1.0),
                                   child: IconButton (
                                        onPressed: (){
                                          setState(() {
                                            click = !click;
                                          });
                                        }, icon:
                                             Icon(
                                           click? Icons.favorite_border: Icons.favorite,size: 20,),

                                     color: click? Colors.black : Color.fromRGBO(233, 144, 0, 1.0),
                                        ),
                                      )
                                     ),
                            ],
                          ),
                      Padding(
                        padding: const EdgeInsets.only(top: 190,left: 15,right: 10),
                        child: InkWell(onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const order2()
                              )
                          );
                        },
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(topLeft: const Radius.circular(10),bottomLeft: const Radius.circular(10)),
                                child: Container(
                                  height: 40,
                                  width: 105,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Center(
                                      child: Column(
                                        children: const [
                                          Text("Type of Brand",style: TextStyle(fontFamily:"JosefinSans",),),
                                          Text("BRAND")
                                        ],
                                      ),
                                    ),
                                  )
                                ),
                              ),
                              ClipRRect(
                                borderRadius: const BorderRadius.only(topRight: const Radius.circular(10),bottomRight: const Radius.circular(10)),
                                child: InkWell(onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const order2()
                                      )
                                  );
                                },
                                  child: Container(
                                    height: 40,
                                    width: 50,
                                    color:  Color.fromRGBO(67, 34, 103, 1.0) ,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                        children:[
                                          Image.asset("assets/image/shopping-bag.png",height: 20),
                                          Text("15.99",style: TextStyle(color: Colors.white,fontSize: 13),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ClipRRect(
                          borderRadius:const BorderRadius.only(topLeft: const Radius.circular(20),topRight:const Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: const Radius.circular(20), ),
                          child: Container(
                            child: const Image(
                              image:NetworkImage("https://i.pinimg.com/736x/01/71/b6/0171b66fee4d74a8dc5ba2cfbffaac20.jpg"),
                              height: 200,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 22),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                color: Colors.white,
                                child: const Padding(
                                  padding: EdgeInsets.only(right: 5,left: 5,top: 2,bottom: 2),
                                  child: Text("15% OFF",style: TextStyle(color:Color.fromRGBO(233, 144, 0, 1.0),fontSize: 12),),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 50,top: 25),
                              child: CircleAvatar(
                                radius: 17,
                                backgroundColor: click2? Colors.white :  Color.fromRGBO(67, 34, 103, 1.0),
                                child: IconButton (
                                  onPressed: (){
                                    setState(() {
                                      click2 = !click2;
                                    });
                                  }, icon:
                                Icon(
                                  click2? Icons.favorite_border: Icons.favorite,size: 20,),

                                  color: click2? Colors.black : Color.fromRGBO(233, 144, 0, 1.0),
                                ),
                              )
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 190,left: 15,right: 10),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(topLeft: const Radius.circular(10),bottomLeft: Radius.circular(10)),
                              child: Container(
                                  height: 40,
                                  width: 105,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Center(
                                      child: Column(
                                        children: const [
                                          Text("Type of Brand",style: TextStyle(fontFamily:"JosefinSans",),),
                                          Text("BRAND",style: TextStyle(fontFamily:"JosefinSans",),)
                                        ],
                                      ),
                                    ),
                                  )
                              ),
                            ),
                            ClipRRect(
                              borderRadius: const BorderRadius.only(topRight: const Radius.circular(10),bottomRight: Radius.circular(10)),
                              child: Container(
                                height: 40,
                                width: 50,
                                color:  Color.fromRGBO(67, 34, 103, 1.0),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: Column(
                                    children:[
                                      Image.asset("assets/image/shopping-bag.png",height: 20),
                                      Text("20.99",style: TextStyle(color: Colors.white,fontSize: 13),),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ClipRRect(
                          borderRadius:const BorderRadius.only(topLeft: const Radius.circular(20),topRight:const Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: const Radius.circular(20), ),
                          child: Container(
                            child: const Image(
                              image:NetworkImage("https://assets.vogue.in/photos/5f69dc6ca58c74ba85c91d30/master/w_1600%2Cc_limit/shivan%2520and%2520narresh%2520couture.jpeg"),
                              height: 200,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 22),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                color: Colors.white,
                                child: const Padding(
                                  padding: EdgeInsets.only(right: 5,left: 5,top: 2,bottom: 2),
                                  child: Text("15% OFF",style: TextStyle(color:Color.fromRGBO(233, 144, 0, 1.0),fontSize: 12),),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 50,top: 25),
                              child: CircleAvatar(
                                radius: 17,
                                backgroundColor: click3? Colors.white :  Color.fromRGBO(67, 34, 103, 1.0),
                                child: IconButton (
                                  onPressed: (){
                                    setState(() {
                                      click3 = !click3;
                                    });
                                  }, icon:
                                Icon(
                                  click3? Icons.favorite_border: Icons.favorite,size: 20,),

                                  color: click3? Colors.black : Color.fromRGBO(233, 144, 0, 1.0),
                                ),
                              )
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 190,left: 15,right: 10),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(topLeft: const Radius.circular(10),bottomLeft: const Radius.circular(10)),
                              child: Container(
                                  height: 40,
                                  width: 105,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Center(
                                      child: Column(
                                        children: const [
                                          Text("Type of Brand",style: TextStyle(fontFamily:"JosefinSans",),),
                                          Text("BRAND",style: TextStyle(fontFamily:"JosefinSans",),)
                                        ],
                                      ),
                                    ),
                                  )
                              ),
                            ),
                            ClipRRect(
                              borderRadius: const BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                              child: Container(
                                height: 40,
                                width: 50,
                                color:Color.fromRGBO(67, 34, 103, 1.0),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: Column(
                                    children:[
                                      Image.asset("assets/image/shopping-bag.png",height: 20),
                                      Text("10.99",style: TextStyle(color: Colors.white,fontSize: 13),),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ClipRRect(
                          borderRadius:const BorderRadius.only(topLeft: const Radius.circular(15),topRight:const Radius.circular(15),bottomLeft: const Radius.circular(15),bottomRight: const Radius.circular(15), ),
                          child: Container(
                            child: const Image(
                              image:NetworkImage("https://media.istockphoto.com/photos/african-american-woman-in-jacket-with-hands-in-pockets-looking-at-picture-id1207472153?k=20&m=1207472153&s=612x612&w=0&h=aYoMBd2aQoowzUGpLqEKQIS1AnI6I6Mx1qXWGs8smXM="),
                              height: 200,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 22),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                color: Colors.white,
                                child: const Padding(
                                  padding: EdgeInsets.only(right: 5,left: 5,top: 2,bottom: 2),
                                  child: Text("15% OFF",style: TextStyle(color:Color.fromRGBO(233, 144, 0, 1.0),fontSize: 12),),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 50,top: 25),
                              child: CircleAvatar(
                                radius: 17,
                                backgroundColor: click4? Colors.white :  Color.fromRGBO(67, 34, 103, 1.0),
                                child: IconButton (
                                  onPressed: (){
                                    setState(() {
                                      click4 = !click4;
                                    });
                                  }, icon:
                                Icon(
                                  click4? Icons.favorite_border: Icons.favorite,size: 20,),

                                  color: click4? Colors.black : Color.fromRGBO(233, 144, 0, 1.0),
                                ),
                              )
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 190,left: 15,right: 10),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(topLeft: const Radius.circular(10),bottomLeft: const Radius.circular(10)),
                              child: Container(
                                  height: 40,
                                  width: 105,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Center(
                                      child: Column(
                                        children: const [
                                          Text("Type of Brand",style: TextStyle(fontFamily:"JosefinSans",),),
                                          Text("BRAND",style: TextStyle(fontFamily:"JosefinSans",),)
                                        ],
                                      ),
                                    ),
                                  )
                              ),
                            ),
                            ClipRRect(
                              borderRadius: const BorderRadius.only(topRight: const Radius.circular(10),bottomRight: const Radius.circular(10)),
                              child: Container(
                                height: 40,
                                width: 50,
                                color: Color.fromRGBO(67, 34, 103, 1.0),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: Column(
                                    children:[
                                      Image.asset("assets/image/shopping-bag.png",height: 20),
                                      Text("15.99",style: TextStyle(color: Colors.white,fontSize: 13),),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 15,),
        ],
      )
    );
  }
}
class drawerScreen extends StatefulWidget {
  const drawerScreen({Key? key}) : super(key: key);

  @override
  State<drawerScreen> createState() => _drawerScreenState();
}

class _drawerScreenState extends State<drawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(67, 34, 103, 1.0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60,bottom: 30),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: const Image(image: NetworkImage(
                  "https://7znn.net/wp-content/uploads/2019/08/3052-11.jpg"),
                fit: BoxFit.cover,
                height: 80,
                width: 80,
              ),
            ),
          ),
          const Text("Yousif reda",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white)),
          const Text("yousifreda2001@gmail.com",style: TextStyle(fontSize: 15,color: Color.fromRGBO(233, 144, 0, 1.0),)),
          const SizedBox(height: 30),
          ListTile(
            leading: const Icon(Icons.home,color: Color.fromRGBO(233, 144, 0, 1.0),),
            title: const Text("Home",style: TextStyle(fontSize: 20,color: Colors.white),),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const homeScreen2()
                  )
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite,color: Color.fromRGBO(233, 144, 0, 1.0),),
            title: const Text("Wishlist",style: TextStyle(fontSize: 20,color: Colors.white),),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const homeScreen3()
                  )
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag,color: Color.fromRGBO(233, 144, 0, 1.0),),
            title: const Text("Cart",style: TextStyle(fontSize: 20,color: Colors.white),),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const cart1()
                  )
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.library_books,color: Color.fromRGBO(233, 144, 0, 1.0),),
            title: const Text("Order History",style: TextStyle(fontSize: 20,color: Colors.white),),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const order1()
                  )
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_pin,color: Color.fromRGBO(233, 144, 0, 1.0),),
            title: const Text("Profile",style: const TextStyle(fontSize: 20,color: Colors.white),),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const profile1()
                  )
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings,color: Color.fromRGBO(233, 144, 0, 1.0),),
            title: const Text("App Setting",style: TextStyle(fontSize: 20,color: Colors.white),),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.help,color: Color.fromRGBO(233, 144, 0, 1.0),),
            title: const Text("Help",style: TextStyle(fontSize: 20,color: Colors.white),),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 30,),
          ListTile(
            leading: const Icon(Icons.logout,color: Color.fromRGBO(233, 144, 0, 1.0),),
            title: const Text("Logout",style:  TextStyle(fontSize: 20,color: Colors.white),),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Screen3()
                  )
              );
            },
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
