import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yousif2_flutter/cart.dart';
import 'package:yousif2_flutter/checkout.dart';
import 'package:yousif2_flutter/checkout2.dart';
import 'package:yousif2_flutter/checkout3.dart';
import 'package:yousif2_flutter/editProfile.dart';
import 'package:yousif2_flutter/editcards.dart';
import 'package:yousif2_flutter/homee.dart';
import 'package:yousif2_flutter/loggin.dart';
import 'package:yousif2_flutter/next2.dart';
import 'package:yousif2_flutter/order.dart';
import 'package:yousif2_flutter/order_history.dart';
import 'package:yousif2_flutter/profile.dart';
import 'package:yousif2_flutter/start.dart';

void main() {


  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Screen1(),
    );
  }
}

