
import 'package:bmi_calculator/firstpage.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class viewpage extends StatelessWidget {

 dynamic agecal;
dynamic heightcal;
dynamic weightcal;
double result;
String showing;
  String condition;
  String gender;
  Color choosecolor;
  


        
   viewpage(
   { 
    
   required this.choosecolor,
required this.agecal,
 required this.heightcal,
required  this.weightcal,
 required  this.result,
   required  this.showing,  
  required this.condition,
   required   this.gender,

    super.key});

  @override
  Widget build(BuildContext context) {

return Scaffold(

backgroundColor:Colors.white,
appBar: AppBar(

leading:IconButton(icon:Icon(Icons.arrow_back,),color:Colors.black, onPressed: () {  
  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
  return firstpage();
  
},));
  },),


backgroundColor: Colors.white,
foregroundColor: Colors.white,



),



body: SingleChildScrollView(
  scrollDirection: Axis.vertical,
  child:   Column(
  
  
  
  mainAxisAlignment: MainAxisAlignment.end,
  
  
  
  
  
  
  
  children: [
    SizedBox(height: 20,),
    Center(child:Text("Calculation Result",style: TextStyle(color:const Color.fromARGB(255, 7, 75, 130),fontSize: 20,fontWeight: FontWeight.bold),),),
  

  SizedBox(height: 10,),
  
  
  
  Container(
    child: CircularPercentIndicator(
  
  animation: true,
  animationDuration: 1000,
  radius: 180,
  lineWidth: 20,
  percent: result/100,
  progressColor: choosecolor,
  backgroundColor:Color.fromARGB(21, 108, 144, 174),
  
  circularStrokeCap: CircularStrokeCap.round,
  
  
  center:Column(
    mainAxisAlignment: MainAxisAlignment.center,
children: [

  Container(
    child: Center(child: Text("BMI Score",style: TextStyle(color:const Color.fromARGB(255, 7, 75, 130),fontSize: 25,fontWeight: FontWeight.bold),),), 
      ),
    SizedBox(height: 30,),
  Container(
  width:194,
  child: Center(child: SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Text("$result",style: TextStyle(fontWeight:FontWeight.bold,color:choosecolor,fontSize: 98),))),
  ),SizedBox(height: 15,),
  Container(
  child: Center(child: Text(condition,style: TextStyle(fontWeight:FontWeight.bold,color:choosecolor,fontSize: 29),)),
  ),





],




  )
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    ),
  ),
  
  

  
  
  
  SizedBox(height: 10,),



   
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  Container(
  
  
  
  
  
  
  
  child: Center(
  
  
  
  
  
  
  
  child: Text("Gender  $gender",style: TextStyle(color: const Color.fromARGB(255, 7, 42, 70),fontSize: 21,fontWeight: FontWeight.bold),),
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ),
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ),
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  SizedBox(height: 20,),
  
  
  
  
  
  
  
  Container(
  
  
  
  
  
  
  
  child: Center(
  
  
  
  
  
  
  
  child: Text("Age    $agecal",style: TextStyle(color: const Color.fromARGB(255, 7, 42, 70),fontSize: 21,fontWeight: FontWeight.bold),),
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ),
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ),
  
  
  
  SizedBox(height: 20,),
  
  
  
  
  
  
  
  Container(
  
  
  
  
  
  
  
  child: Center(
  
  
  
  
  
  
  
  child: Text("Height  $heightcal cm",style: TextStyle(color: const Color.fromARGB(255, 7, 42, 70),fontSize: 21,fontWeight: FontWeight.bold),),
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ),
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ),
  
  
  
  
  
  
  
  SizedBox(height: 20,),
  
  
  
  
  
  
  
  Container(
  
  
  
  
  
  
  
  child: Center(
  
  
  
  
  
  
  
  child: Text("Weight  $weightcal kg",style: TextStyle(color: const Color.fromARGB(255, 7, 42, 70),fontSize: 21,fontWeight: FontWeight.bold),),
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ),
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ),
  
  
  
  SizedBox(height: 10,),
  
  
  
  Padding(
  
  
  
  padding: const EdgeInsets.all(20.0),
  
  
  
  child:   Container(
  
  
  
    
  
  
  
    height: 90,
  
  
  
  child: Center(child: Text(showing,style: TextStyle(fontSize: 17,color:choosecolor,fontWeight: FontWeight.bold),)),
  
  
  
  decoration: BoxDecoration(
  
  
  
  borderRadius:BorderRadius.circular(20),
  
  
  
  color: Colors.white,
  
  
  
  boxShadow:[BoxShadow(
  
  
  
  
  
  
  
  blurRadius: 4,
  
  
  
  spreadRadius: 3
  
  
  
  
  
  
  
  
  
  
  
  )
  
  
  
  
  
  
  
  ]
  
  
  
  ),
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    
  
  
  
  
  
  
  
  ),
  
  
  
  )
  
  
  
  
  
  
  
  ],
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    
  
  
  
  
  
  
  
  ),
),







);



  }
}