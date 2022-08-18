import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yousif2_flutter/loggin.dart';
import 'package:yousif2_flutter/next.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(67, 34, 103, 1.0),
      appBar: AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color.fromRGBO(67, 34, 103, 1.0),
      elevation: 0,
      actions: [
        ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(67, 34, 103, 1.0),),elevation: MaterialStateProperty.all(0)),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Screen2()));
            }, child: const Text("Back",
          style: TextStyle(
              color:Color.fromRGBO(233, 144, 0, 1.0),
            fontFamily:"JosefinSans",
          ),
        )
        )
      ],
    ),
      body: Column(
        children: [
             Container(
              height: 300,
              margin: const EdgeInsets.only(left: 30,bottom: 20,right: 30),
              child: Image.asset("assets/image/Mobile Marketing-pana.png")
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30,right: 30,top: 90),
            child: Text("Be sure to log in to be able to book newly added offers.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white70,
                fontFamily:"JosefinSans",
                fontSize: 15
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(67, 34, 103, 1.0),),elevation: MaterialStateProperty.all(0)),
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const login()
                          )
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 20,fontFamily:"JosefinSans",),
                    )
                ),
                const Text(
                  "|",
                  style: TextStyle(
                      fontSize: 40,
                      color: Color.fromRGBO(233, 144, 0, 1.0)
                  ),
                ),
                ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(67, 34, 103, 1.0),),elevation: MaterialStateProperty.all(0)),
                    onPressed: (){},
                    child: const Text(
                      "Register",
                      style: TextStyle(fontSize: 20,
                      fontFamily:"JosefinSans",
                      )
                    )
                ),
              ],
            ),
          ),
                Padding(
    padding: const EdgeInsets.only(top: 65),
       child: Row(
         children: [
           Padding(
             padding: const EdgeInsets.only(left: 8),
             child: Container(
               height: 10,
               width: 50,
               decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                   color: const Color.fromRGBO(233, 144, 0, 1.0)
               ),
             ),
           ),
        ],
       ),
                ),
        ]
    ),
    );
  }
}
