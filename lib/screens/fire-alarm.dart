import 'package:flutter/material.dart';
import 'package:register/pallate.dart';
import '../widgets/widgets.dart';


class FireAlarmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 144, 0, 0),
        leading: Icon(Icons.account_circle_rounded),
        title: Container(
        width: 130,
        child: Image.asset('assets/logos/logo-black.png'),
  ),
  centerTitle: true,
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
                child: Text(
                '(Instructions During Fire Emergency)',
                style: TextStyle(
                  fontSize: 21,
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
                    width: 300,
                    child: Image.asset('assets/images/fire.png',
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
                '1- use your mobile, smartwatch, ring or bracelet to call climax rescue team.',
                style: TextStyle(
                  
                  fontSize: 22,
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
                '2-Stay low in case of smoke or fumes. If you’re in bed, roll off the bed and crawl to the door.',
                style: TextStyle(
                  
                  fontSize: 22,
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
                '3- Don’t waste time getting dressed or searching for valuables.',
                style: TextStyle(
                  
                  fontSize: 22,
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
                '4- Try to take your way out of the building until the rescue team arrives',
                style: TextStyle(
                  
                  fontSize: 22,
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
                '5- Close doors as you leave to confine fire as much as possible.',
                style: TextStyle(
                  
                  fontSize: 22,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                )
                
              ),
                  ),
                  
                  SizedBox(
                    height: 20,
                  ),
                  ]
                      
                
              ),
            
            ],
          ),
      ),
      bottomNavigationBar: BottomNavigationBar(
    backgroundColor: Color.fromARGB(255, 144, 0, 0),
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home' ,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.menu),
        label: 'Menu',
      ),
    ],
  ),

      
    );
  }
}