import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:yousif2_flutter/profile.dart';


class editProfile extends StatefulWidget {
  const editProfile({Key? key}) : super(key: key);

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  late PickedFile _imageFile;
  final ImagePicker picker= ImagePicker();
  Color purple=const Color.fromRGBO(67, 34, 103, 1.0);
  Color lpurplet=const Color.fromRGBO(159, 148, 171, 1.0);
  Color lOrange=const Color.fromRGBO(233, 188, 107, 1.0);
  Color orange =const Color.fromRGBO(233, 144, 0, 1.0);
  Color white=const Color.fromRGBO(254, 254, 254, 1.0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(67, 34, 103, 1.0),

        body:ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const profile()),);
                    },
                    child:const Icon(Icons.arrow_back,color: Colors.white,) ,
                  ),
                  const Text("Edit Profile",style: TextStyle(fontSize: 25,color: Colors.white),),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text("Cancel",style: TextStyle(color:orange ),),
                  ),

                ],
              ),

            ),
            Padding(
              padding:  const EdgeInsets.only(bottom: 20),
              child: Center(
                child: Stack(
                  children:  [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: const Image(image: NetworkImage(
                          "https://7znn.net/wp-content/uploads/2019/08/3052-11.jpg"),
                        fit: BoxFit.cover,
                        height: 110,
                        width: 110,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 77,top: 85),
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 81,top: 89),
                      child: CircleAvatar(
                        backgroundColor: purple,
                        radius: 16,
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              showModalBottomSheet<void>(
                                context: context,
                                builder:(context)=>bottomSheet(),
                              );
                            });
                          },
                          child: Icon(Icons.edit,color: white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: Column(
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor:white, filled: true,

                            prefixIcon:
                            Container(
                              height: 60,
                              width: 50,
                              margin: const EdgeInsets.only(right: 5.0),
                              decoration: BoxDecoration(
                                color: orange,
                                borderRadius: const BorderRadius.only(
                                  topLeft: const Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                ),),
                              child:Image.asset("assets/image/path-5.png",),
                            ),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10),

                              ),
                            ),
                            hintText: 'Name',
                            hintStyle:TextStyle(color: purple)),
                      ),
                    ),
                    ],),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor:white, filled: true,
                            prefixIcon:
                            Container(
                              height: 60,
                              width: 50,
                              margin: const EdgeInsets.only(right: 5.0),
                              decoration: BoxDecoration(
                                color: orange,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                ),),
                              child: Icon(Icons.email,color: purple,size: 30,),
                            ),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10),
                              ),
                            ),
                            hintText: 'Email',
                            hintStyle:TextStyle(color: purple)),
                      ),
                    ),
                    ],),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor:white, filled: true,
                            prefixIcon:
                            Container(
                              height: 60,
                              width: 50,
                              margin: const EdgeInsets.only(right: 5.0),
                              decoration: BoxDecoration(
                                color: orange,
                                borderRadius: const BorderRadius.only(
                                  topLeft: const Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                ),),
                              child: Icon(Icons.home,color: purple,size: 30,),
                            ),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10),
                              ),
                            ),
                            hintText: 'Country',
                            hintStyle:TextStyle(color: purple)),
                      ),
                    ),
                    ],),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor:white, filled: true,
                            prefixIcon:
                            Container(
                              height: 60,
                              width: 50,
                              margin: const EdgeInsets.only(right: 5.0),
                              decoration: BoxDecoration(
                                color: orange,
                                borderRadius: const BorderRadius.only(
                                  topLeft: const Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                ),),
                              child: Icon(Icons.location_on,color: purple,size: 30,),
                            ),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10),
                              ),
                            ),
                            hintText: 'Location',
                            hintStyle:TextStyle(color: purple)),
                      ),
                    ),
                    ],),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor:white, filled: true,
                            prefixIcon:
                            Container(
                              height: 60,
                              width: 50,
                              margin: const EdgeInsets.only(right: 5.0),
                              decoration: BoxDecoration(
                                color: orange,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                ),),
                              child:Icon(Icons.phone,color: purple,size: 30,),
                            ),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10),
                              ),
                            ),
                            hintText: 'Phone number',
                            hintStyle:TextStyle(color: purple)),
                      ),
                    ),
                    ],),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(topRight: Radius.circular(5),topLeft:Radius.circular(5) ),
                child: Container(
                  // margin: EdgeInsets.only(top: 67),
                  width:double.infinity,
                  height: 50,
                  color: const Color.fromRGBO(233, 188, 107, 1.0),
                  child: ElevatedButton(
                      style:ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(233, 144, 0, 1.0),)
                      ) ,
                      onPressed: (){},
                      child: const Text(
                        "Save",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                  ),
                ),
              ),
            ),
          ],
        )

    );
  }
  Widget bottomSheet(){
    return Container(
      color: const Color.fromRGBO(159, 148, 171, 1.0),
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(children:<Widget>[
        const Text("Choose profile photo",style: const TextStyle(fontSize: 20,),),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton.icon(
              icon: const Icon(Icons.camera),
              onPressed: () {
                takePhoto(ImageSource.camera); },
              label: const Text("Camera"),),
            FlatButton.icon(
              icon: const Icon(Icons.image),
              onPressed: () {
                takePhoto(ImageSource.gallery);
              },
              label: const Text("Gallery"),),
          ],)
      ],
      ),
    );
  }
  void takePhoto(ImageSource source)async{
    final pickedFile= await picker.getImage(
      source:source,
    );
    setState(() {
      _imageFile = PickedFile as PickedFile ;
    });
  }
}



