import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 PageController _controller= PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
           Container(
             alignment: Alignment.topCenter,
             height: 926,
             width: 428,
             color: Colors.white,
             child: Column(
               children: [
                 Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     SizedBox(height: 80,),
                     SizedBox(width: 15,),
                     Container(
                       child:IconButton(
                       onPressed:  (){},
                       icon: Icon(Icons.arrow_back_ios))),
                       SizedBox(width: 110,),
           
                       Container(
                       child:Image.asset("assets/Mostakim/logo.png",
                       color:Colors.green,height: 21.81,width: 26.13,)),
           
                       SizedBox(width: 20,),
                       Text("EduTrack",style: TextStyle(
                         color: Colors.green,fontSize: 18,fontFamily: "Nunito",fontWeight: FontWeight.w800
                       ),)
                   ],
                 ),
                 SizedBox(height: 120,),
                 Positioned(
                  width: 296.05,
                  height: 216.49,
                  top: 5.73,
                  left: 42.32,
                  child: Image.asset("assets/Mostakim/allmanlogo.png")),
                  SizedBox(height: 50,),

                  Positioned(
                    child: Text("Wlcome To EduTrack",style: TextStyle(
                    fontSize: 22,color: Colors.black,fontFamily: "Nutino",fontWeight: FontWeight.w700
                  ),)),
                  SizedBox(height: 15,),

                  Center(
                    child: Positioned(
                      child: Text("Your School Management Made Easy Stay updated on",style: TextStyle(
                        fontWeight: FontWeight.w400,color: Colors.black,fontSize: 15
                      ),)),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text("school events and announcements",style: TextStyle(
                        fontWeight: FontWeight.w400,color: Colors.black,fontSize: 15
                      ),)),
                  SizedBox(height: 140,),
                    Container(
                      alignment: Alignment.center,
                      child: SmoothPageIndicator(
                        effect: CustomizableEffect(
                          dotDecoration: DotDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey,
                            height: 4.9,
                            width: 4
                          ),
                           activeDotDecoration: DotDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green,
                            height: 17,
                            width: 3.5
                           )),
                        controller: _controller,
                         count: 3),
                    ),

                 SizedBox(height: 40,),
                   Positioned(
                      child: MaterialButton(
                        child: Text("Next",style: TextStyle(
                          color: Colors.black
                        ),),
                        color: Colors.green,
                        onPressed: (){},
                        height: 44,
                        minWidth: 200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        ),
                    ),

                    SizedBox(height: 10,),
                    Column(
                      children: [
                        TextButton(onPressed: (){},
                         child: Text("Skip",style: TextStyle(
                          fontSize: 14,color: Colors.black,fontWeight: FontWeight.w400,fontFamily: "Roboto"
                         ),))
                      ],
                    ),
               ],
             ),
             
           )
          ],
            )
          ),
        ),
      );
    
  }
}
