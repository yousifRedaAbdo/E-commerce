import 'package:flutter/material.dart';
class order2 extends StatefulWidget {
  const order2({Key? key}) : super(key: key);

  @override
  State<order2> createState() => _order2State();
}

class _order2State extends State<order2> {
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
           Stack(
                  children: [
                    Container(
                    height:MediaQuery.of(context).size.height*0.544444,
                    width:MediaQuery.of(context).size.width,
                      color: orange,
                    child: const Image(
                        image: const NetworkImage("https://i.pinimg.com/236x/fa/f3/cd/faf3cd02b7949f01f9c4558c99edfb60.jpg"),
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),

                  ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child:const Icon(Icons.arrow_back,size: 30,),
                              ),

                              IconButton (
                                onPressed: (){
                                  setState(() {
                                    click4 = !click4;
                                  });
                                }, icon:
                              Icon(
                                  click4? Icons.favorite_border: Icons.favorite,size: 30),

                                color: click4? Colors.black : orange,
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height,),
                         ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                color:purple,
                                width: 100,
                                height: 30,
                                  child: const Center(child: const Text("15% OFF",style: TextStyle(color: Colors.white,fontFamily:"JosefinSans"),)),),)


                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height:MediaQuery.of(context).size.height*0.54,),
                        Container(
                          height:MediaQuery.of(context).size.height*0.4,
                         width:MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: const BorderRadius.all(const Radius.circular(10.0),
                            ),),
                          child: Column(
                            children: [
                              const SizedBox(height: 15,),
                               Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(width: 18,
                                      ),
                                      const Text("Women's Fall Winter Scarf",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily:"JosefinSans"),),
                                  ],
                                ),
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 15,),
                                  const Text("American Trends",style: TextStyle(fontSize: 18,fontFamily:"JosefinSans",fontWeight: FontWeight.bold),),
                                ],
                              ),
                              const SizedBox(height: 7,),
                              Row(
                                 children: [
                                   const SizedBox(width: 15,),
                                   const Icon (Icons.star,color: const Color.fromRGBO(255, 186, 0, 1.0),size: 20,),
                                   const Icon (Icons.star,color: const Color.fromRGBO(255, 186, 0, 1.0),size: 20,),
                                   const Icon (Icons.star,color: Color.fromRGBO(255, 186, 0, 1.0),size: 20,),
                                   const Icon (Icons.star,color: Color.fromRGBO(255, 186, 0, 1.0),size: 20,),
                                   const Icon (Icons.star_half,color: const Color.fromRGBO(255, 186, 0, 1.0),size: 20,),
                                   const Text(" +23")
                                 ],

                              ),
                              const SizedBox(height: 7,),
                              const Padding(
                                padding: EdgeInsets.only(left: 25,top: 1),
                                child: Text("Wearing this scarf in cold fall winter or spring days"
                                    'would be good long time use and durable . You can'
                                    "use it as a show to attend an evening party , or as"
                                    " wrop when you go out for a wonderful travel Soft,"
                                    "warm , lightweight , easy carly .",style: TextStyle(fontSize: 14,fontFamily:"JosefinSans"),),),
                              const SizedBox(height: 7,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   const SizedBox(width: 20,),
                                   const Padding(
                                     padding: EdgeInsets.only(top: 0.0),
                                     child: Text("Material & Size",style: const TextStyle(fontSize: 17,fontFamily:"JosefinSans")),
                                   ),
                                 ],
                               ),
                              const SizedBox(height: 5),
                              const Padding(
                                padding: EdgeInsets.only(left: 25,top: 1),
                                child: const Text("Ultra Soft Cashmere like Acrylic, furry, cozy, light and warm, close to skin.  Oversized 59″ x 59″ (L X W)",style: const TextStyle(fontSize: 13,fontFamily:"JosefinSans"),),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 30.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                          child: Container(
                                            color:purple,
                                            width: 170,
                                            height: 45,
                                            child: Center(child:
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Icon(Icons.attach_money_rounded,color: white,size: 15,),
                                                  const Text("15.55 ",style: TextStyle(color: Colors.white,fontFamily:"JosefinSans"),),
                                                  const Text("| ",style: const TextStyle(color: Colors.white),),
                                                  Image.asset("assets/image/shopping-bag-1 1.png"),
                                                  const Text(" Add to cart",style: TextStyle(color: Colors.white,fontSize: 10,fontFamily:"JosefinSans"),),
                                                ],
                                              ),
                                            )),),
                                        ),),
                                    ),
                                ],
                              ),
    ],
                          ),
                        )
                      ],),
                  ],
                ),
        ],
      ),

    );
  }
}
