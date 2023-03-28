import 'package:flutter/material.dart';
import 'package:register/pallate.dart';
import '../widgets/widgets.dart';


class EmergencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Color.fromARGB(255, 144, 0, 0),
        title: Container(
        width: 130,
        child: Image.asset('assets/logos/logo-black.png'),
  ),
  toolbarHeight: 60,
        actions: [
              Container(
            width: 50,
              child:Icon(Icons.settings),
          ),
        ],
        
      ),
      body: Container(
          height: 800,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: ListView(
            
            
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
              alignment: Alignment.center,
              child: Text("Rescue Team System",
               style: TextStyle(
                fontSize: 28,
                color: Color.fromARGB(255, 145, 0, 0),
                fontWeight: FontWeight.bold,
                ),
                ),
                
              ),
              SizedBox(
                    height: 10,
                  ),
              Container(
                height: 100,
                    child: Image.asset('assets/logos/alert.png',
                        height: 250, width: 350),
              ),
              SizedBox(
                    height: 10,
                  ),
              Align(
                alignment: Alignment.center,
                child: Text(
                '(Fire Emergency)',
                style: TextStyle(
                  fontSize: 25,
                color: Color.fromARGB(255, 146, 0, 0),
                fontWeight: FontWeight.bold,
                )
                
              ),
              ),
              SizedBox(
                    height: 10,
                  ),
              Container(
                    height: 160,
                    child: Image.asset('assets/images/person.png',
                        height: 150, width: 450),
                  ),
              SizedBox(
                    height: 20,
                  ),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                  Padding(
                    padding: EdgeInsets.only(left:10),
                  child: Text(
                textAlign: TextAlign.left,
                '- Name: Omar Mohamed',
                style: TextStyle(
                  
                  fontSize: 21,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                )
                
              ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:10),
                  child: Text(
                textAlign: TextAlign.left,
                '- Age: 21 Years',
                style: TextStyle(
                  
                  fontSize: 21,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                )
                
              ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:10),
                  child: Text(
                textAlign: TextAlign.left,
                '- Mobile Number: +201012345678',
                style: TextStyle(
                  
                  fontSize: 21,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                )
                
              ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:10),
                  child: Text(
                textAlign: TextAlign.left,
                '- Chronic Diseases: Diabetes - blood pressure',
                style: TextStyle(
                  
                  fontSize: 21,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                )
                
              ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RoundedButton(
                              buttonText: 'Open Location',
                               color: Color.fromARGB(255, 145, 10, 0)
                               ),
                  ]
                      
                
              ),
            
            ],
          ),
      ),
      

      
    );
  }
}