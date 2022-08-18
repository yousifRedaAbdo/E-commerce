import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yousif2_flutter/next.dart';
import 'package:yousif2_flutter/next2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(67, 34, 103, 1.0),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Container(
              margin: const EdgeInsets.all(30),
                child: Image.asset("assets/image/Catalogue-amico.png")
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30,right: 30,top: 90),
            child: Text(
              "We strive to have a positive impact on customers, employees, small businesses, the economy, and communities.",
              textAlign:TextAlign.center ,
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
                         style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(67, 34, 103, 1.0)),elevation: MaterialStateProperty.all(0)),
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Screen3()
                              )
                          );
                        },
                        child: const Text(
                            "Skip",
                          style: TextStyle(
                              fontSize: 20,fontFamily:"JosefinSans"),
                        )
                    ),
                const Text(
                    "|",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white
                  ),
                ),
                ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(67, 34, 103, 1.0)),elevation: MaterialStateProperty.all(0)),
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screen2()
                       )
                      );
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(fontSize: 20,color: Color.fromRGBO(233, 144, 0, 1.0),fontFamily:"JosefinSans"),
                    )
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 95),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Stack(
                    children: [
                      Container(
                        height: 10,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 19,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromRGBO(233, 144, 0, 1.0)
                        ),
                      ),

                    ],
                  ),
                ),
                const SizedBox(width: 7),
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
