import 'package:flutter/material.dart';
import 'package:yousif2_flutter/homee.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);
  @override

  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  Color purple=Color.fromRGBO(67, 34, 103, 1.0);
  Color lpurplet=Color.fromRGBO(159, 148, 171, 1.0);
  Color lOrange=Color.fromRGBO(233, 188, 107, 1.0);
  Color orange =Color.fromRGBO(233, 144, 0, 1.0);
  Color white=Color.fromRGBO(254, 254, 254, 1.0);
  var _userPasswordController;
  late bool _passwordVisible;
  final formKey = GlobalKey<FormState>();
  String name = '';
  @override
  void initState() {
    _passwordVisible = false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      body:ListView(
        children:[
          Container(
            width: double.infinity,
            height:MediaQuery.of(context).size.height*0.333,
            color: purple,
            child:
            Image.asset("assets/image/Group -1.png",),


          ),
          Form(
              key: formKey,
              child:Column(
                children: [
                  Container(
                    width: double.infinity,
                    height:MediaQuery.of(context).size.height*0.333,
                    color: purple,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                          child:
                          TextFormField(
                            cursorColor: orange,
                            decoration:InputDecoration(
                              labelText: 'E-mail',
                              labelStyle: TextStyle(color: white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 19 ),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: white,
                                      width: 2
                                  )
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: white,
                                    width: 2
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: lpurplet,
                                  width: 2,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^[\w-\.]+@gmail.com')
                                      .hasMatch(value)) {
                                return "Enter Correct email";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                          child:TextFormField(
                            cursorColor: orange,
                            keyboardType: TextInputType.text,
                            controller: _userPasswordController,
                            obscureText: !_passwordVisible,//This will obscure text dynamically
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(color: white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 19 ),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: white,
                                      width: 2
                                  )
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: white,
                                      width: 2
                                  )
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: lpurplet,
                                  width: 2,
                                ),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: lpurplet,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^[\w-\.]')
                                      .hasMatch(value)) {
                                return "Enter Correct Password";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Text("Forgot Passowrd?",style: TextStyle(color: white),),

                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(width: double.infinity,
                    height:MediaQuery.of(context).size.height*0.25,
                    color: purple,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton( onPressed: () {
                            if(formKey.currentState!.validate()){
                              final snackBar=SnackBar(content: Text('Submitting form'));
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const homeScreen2()
                                  )
                              );
                            }
                          }, child: Text("Log in",style: TextStyle(color: orange,fontSize: 20),),),
                          Padding(                     padding: const EdgeInsets.only(right: 8.0,left:8.0),
                            child: Text("|",style: TextStyle(color: lpurplet,fontSize: 20)),
                          ),
                          TextButton(onPressed: () {}, child: Text('Register',style: TextStyle(color: lpurplet,fontSize: 20)))
                        ],
                      ),
                    ),
                  ),
                ],
              )

          ),

        ],
      ) ,
    );
  }

}
