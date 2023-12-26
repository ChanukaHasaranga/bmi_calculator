import 'package:bmi_calculator/viewpage.dart';
import 'package:flutter/material.dart';
import 'package:gender_picker/gender_picker.dart';
import 'package:gender_picker/source/enums.dart';

class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {

final  age=TextEditingController();
final height=TextEditingController();
final weight=TextEditingController();

String agecal='0';
String heightcal='0';
String weightcal='0';
double result=0;
String showing='';
String condition='0';
String gender="Not choose";
Color choosecolor=const Color.fromARGB(255, 7, 34, 56);




  @override
  Widget build(BuildContext context) {


return Scaffold(

backgroundColor: Colors.white,

body:Center(
  child:   SingleChildScrollView(
  
  scrollDirection: Axis.vertical,
  
  
  
  child: Column(
  
  mainAxisAlignment: MainAxisAlignment.start,
  
  
  children: [
  
  
  
  
  
  Row(
  
    mainAxisAlignment: MainAxisAlignment.start,
  
    crossAxisAlignment: CrossAxisAlignment.center,
  
  children: [
  
  
  
  
  
  SizedBox(
  
  width: 20,
  
  
  
  ),
  
  
  
  Container(
  
  
  
  child: Padding(
  
    padding: const EdgeInsets.all(5.0),
  
    child:   Image.asset("assetss/logo.png",alignment: Alignment.bottomCenter,),
  
  ),
  
  width: 90,
  
  height: 105,
  
  
  
  
  
  
  
  
  
  
  
  ),
  
  
  
  
  
  ]
  
  
  
  
  
  
  
  ),
  
  SizedBox(height: 2,),
  
  
  
  Row(
  
  
  
    crossAxisAlignment: CrossAxisAlignment.start,
  
    mainAxisAlignment: MainAxisAlignment.center,
  
  children: [
  
  
  
  Container(
  
  
  
  
    child:Image.asset("assetss/newman2.png"),
  
    width: 200,
  
  
  
               
  
      
  
  
  
    
  
  ),
  
  
  
  Container(
  
  width: 150,
  
  child: Column(
  
    mainAxisAlignment: MainAxisAlignment.start,
  
  
  
    crossAxisAlignment: CrossAxisAlignment.center,
  
  
  
  children: [
  
  
  
  SizedBox(height: 20,),
  
  Container
  
  (
  
    width: 200,
  
    
  
    
  
    child: Text("Gender",style: TextStyle(color:const Color.fromARGB(255, 3, 46, 82),fontSize: 22,fontWeight: FontWeight.bold),)),
  
    SizedBox(
  
  
  
    height: 10,
  
  ),
  
  
  
  Container(
  width: double.infinity,
  
  alignment: Alignment.center,
  
  child: GenderPickerWithImage(
  
  
  
  showOtherGender: false,
  
  verticalAlignedText: true,
  
  onChanged: (Gender_gender) {
  
  
  
  Gender_gender.toString();
  
  
  
  if(Gender_gender== Gender.Male){
  
  
  
  gender="Male";
  
  
  
  
  
  }else if(Gender_gender== Gender.Female){
  
  
  
  gender="Female";
  
  
  
  
  
  
  
  }
  
  
  
  },
  
  
  
  
  
  
  
  selectedGender: Gender.Male, //By Default
  
          selectedGenderTextStyle:
  
              TextStyle(color: Color(0xFFC41A3B), fontWeight: FontWeight.bold,fontSize: 30),
  
          unSelectedGenderTextStyle:
  
              TextStyle(color: Color(0xFF1B1F32), fontWeight: FontWeight.bold,fontSize: 30),
  
          equallyAligned: true,
  
          size: 150.0, // default size 40.0
  
          animationDuration: Duration(seconds: 1),
  
          isCircular: true, // by default true
  
          opacityOfGradient: 0.5,
  
          padding: EdgeInsets.all(8.0),
  
  
  
  
  
  
  
  ),
  
  
  
  
  
  
  
  
  
  ),
  
  
  
  
  
  SizedBox(
  
  
  
    height: 20,
  
  ),
  
  
  
  
  
  Container(
  
      width: 200,
  
  
  
    
  
    child: Text("Age",style: TextStyle(color:const Color.fromARGB(255, 3, 46, 82),fontSize: 22,fontWeight: FontWeight.bold),)),
  
  
  
    
  
  SizedBox(
  
  
  
    height: 10,
  
  ),
  
  
  
  TextField(
  
  
  
  keyboardType: TextInputType.number,
  
  controller:age,
  
  style: TextStyle(color: Colors.black,fontSize: 21,fontWeight: FontWeight.bold),
  
  textAlign: TextAlign.center,
  
  
  
  decoration:InputDecoration(
  
  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300,),borderRadius: BorderRadius.circular(12)),
  enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.grey.shade300,),borderRadius: BorderRadius.circular(12) )
  
  
  ) ,
  
  ),
  
  
  
  SizedBox(height: 30,),
  
  
  
  Container(
  
      width: 200,
  
  
  
    
  
    child: Text("Height (cm)",style: TextStyle(color:const Color.fromARGB(255, 3, 46, 82),fontSize: 22,fontWeight: FontWeight.bold),)),
  
  
  
    
  
  SizedBox(
  
  
  
    height: 10,
  
  ),
  
  TextField(
  
  keyboardType: TextInputType.number,
  
  controller:height,
  
  style: TextStyle(color: Colors.black,fontSize: 21,fontWeight: FontWeight.bold),
  
  textAlign: TextAlign.center,
  
  decoration: InputDecoration(
  
  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300,),borderRadius: BorderRadius.circular(12)),
  enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.grey.shade300,),borderRadius: BorderRadius.circular(12) )
  
  
  ),
  
  
  
  ),
  
  
  
  SizedBox(height: 30,),
  
  
  
  Container(
  
      width: 200,
  
  
  
    
  
    child: Text("Weight (kg)",style: TextStyle(color:const Color.fromARGB(255, 3, 46, 82),fontSize: 22,fontWeight: FontWeight.bold),)),
  
  
  
    
  
  SizedBox(
  
  
  
    height: 10,
  
  ),
  
  TextField(
  
  
  
  keyboardType: TextInputType.number,
  
  controller:weight,
  
  style: TextStyle(color: Colors.black,fontSize: 21,fontWeight: FontWeight.bold),
  
  textAlign: TextAlign.center,
  
  decoration: InputDecoration(
     focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300,),borderRadius: BorderRadius.circular(12)),
  enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.grey.shade300,),borderRadius: BorderRadius.circular(12) )
  
  ),
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  )
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ],
  
  
  
  
  
  
  
  
  
  ),
  
  
  
  
  
  
  
  
  
  
  
  )
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ],
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ),
  
  Center(
  
    child:   Container(
  
  
  
  child: ElevatedButton(
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  onPressed: () {
  
    
  
  setState(() {
  
  
  
    agecal=age.text;
  
    heightcal=height.text;
  
    weightcal=weight.text;
  
  
  
  
  
  });
  
  double hei=double.parse(heightcal);
  
  double wei=double.parse(weightcal);
  
  calculation(hei,wei,);
  
  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
  
    
  
  return viewpage(gender: gender, choosecolor: choosecolor, agecal: agecal, heightcal: heightcal, weightcal: weightcal, result: result, showing: showing, condition: condition,);
  
  
  },));
  
    
  
  },
  
  
  
  child: Text("Calculate",style: TextStyle(color: Colors.white,fontSize: 33,fontWeight: FontWeight.bold),),
  
  
  
  style: ElevatedButton.styleFrom(
  
  shadowColor:Colors.black,
  
  fixedSize: Size.fromHeight(70),
  
  maximumSize: Size.fromWidth(230),
  
  
  
  backgroundColor:const Color.fromARGB(255, 18, 65, 19),
  
  shape:RoundedRectangleBorder(
  
  
  
  borderRadius: BorderRadius.circular(20)
  
  
  
  
  
  
  
  
  
  )
  
  
  
  
  
  
  
  ),
  
  
  
  )
  
  ,
  
    
  
    
  
    
  
    
  
    
  
    
  
    
  
    
  
    
  
    
  
      
  
    
  
    ),
  
  )
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    
  
  ],
  
  
  
  
  
  
  
  
  
  
  
  )
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ),
),









);









  }




  void calculation(heightcal,weightcal){
 
 


result=weightcal/((heightcal*heightcal)/10000);


if(result<18.5){

showing="You are in underweight";
condition="Underweight";
choosecolor=Color.fromARGB(255, 74, 232, 6);

}else if(22.9>=result && result>=18.5){


showing="You are in Normal rang";
condition="Normal";
choosecolor=Color.fromARGB(255, 8, 139, 1);

}else if(23<=result && result<=24.9){

showing="You are in Over Weight !";
condition="Over Weight";
choosecolor=const Color.fromARGB(255, 74, 0, 0);

}

else if(25<=result && result<=29.9){

showing="You are in Obese 1 !!";
condition='Obese 1';
choosecolor=const Color.fromARGB(255, 168, 0, 0);

}else if(30<=result){

showing="You are in Obese 2 !!!";
condition='Obese 2';
choosecolor=const Color.fromARGB(255, 255, 0, 0);


}



  }




}