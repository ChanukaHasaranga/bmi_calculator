import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'firstpage.dart';

void main(){
runApp(



  DevicePreview(



    builder:(context) {
      return MyApp();
    },
    
    
    //device preview ekata dmma code
  
  
  ),
  
  
  );

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
return  MaterialApp(
  
     
  
    locale: DevicePreview.locale(context),  //device preview ekata dmma code
  
    
  
     builder: DevicePreview.appBuilder, //device preview ekata dmma code
  
    
  
    
  
    
  
      
  
    
  
    debugShowCheckedModeBanner: false,
  
    
  
    title: "BMI Calculator",
  
    
  
    home:AnimatedSplashScreen(
      
      
      
      
      
      splash:Text("BMI Calculator",style: TextStyle(fontSize: 32,color:Colors.white,fontWeight: FontWeight.bold,fontFamily:"ins"),), 
      
      backgroundColor: Colors.black,
animationDuration: Duration(seconds: 2),


      splashTransition:SplashTransition.scaleTransition,   
      
      
      nextScreen: firstpage()
      
      
      
      
      
      
      
      
      
      )
  
    
  
    
  
    
  
    
  
    
  
    
  
    
  
    
  
    
  
    
  
    
  
    
  
    
  
    
  
    
  
    
  
    
  
    
  
    
  
    );
  
  














  }








}
