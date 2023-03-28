import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:register/pallate.dart';
import '../widgets/widgets.dart';
import 'package:register/screens/fire-alarm.dart';



Widget _EmergencyCases ({
  required Color color,
  required String tittle,
  required String subtittle,
  
  })
  {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10.00),
    padding: EdgeInsets.only(left:20),
    height: 120,
    width: 240,
    
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
    ),
    child: Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      
        Text(
          tittle,style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          subtittle,
          style: TextStyle(
            fontSize: 19,
            color: Colors.white,
          )
        ),     
      ]
    )
    
  );
  
}

Widget _ConnectedDevices({required Color color, required String image, required String name,}){
  return Container(
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10.0),
      border: Border.all(color: Colors.grey, width: 2,)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60,
          decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image)
          ),
          ),
        ),
        SizedBox(height: 10,),
        Text(name,style: TextStyle(fontSize: 17),
        ),
      ],
    ),
  );
  
}

class HomePage extends StatelessWidget {
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
              Padding(
              padding: EdgeInsets.only(left:20 , top: 20),
              child: Text("Emergency Cases",
               style: TextStyle(
                fontSize: 19,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                 padding: EdgeInsets.only(
                  left: 30,
                  top: 20,
                 ),
                 child: Row(
                  children: [
                    _EmergencyCases(
                      color: Color.fromARGB(255, 145, 0, 0),
                      subtittle: "More Info",
                      tittle: "Earthquake",
                       
                    ),
                    _EmergencyCases(
                      color: Color.fromARGB(255, 145, 0, 0),
                      subtittle: "More Info",
                      tittle: "Fire Alarm",
                      
                    ),
                    _EmergencyCases(
                      color: Color.fromARGB(255, 145, 0, 0),
                      subtittle: "More Info",
                      tittle: "Human Abuse",
                      
                    ),
                  ],
                 ), 
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Connected Devices',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    Padding(
                      padding: EdgeInsets.only(
                        top:20,
                      ),
                      child: Container(
                        height: 250,
                        child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 8,
                          childAspectRatio: 1.30,
                          children: [
                                _ConnectedDevices(
                                  color: Color.fromARGB(255, 0, 129, 5),
                                  image: 'assets/images/voice.png',
                                  name: 'Voice Authentication'
                                ),
                                _ConnectedDevices(
                                  color: Color.fromARGB(255, 0, 129, 5),
                                  image: 'assets/images/smartwatch.png',
                                  name: 'Smart Watch'
                                ),
                                _ConnectedDevices(
                                  color: Color.fromARGB(255, 253, 253, 253),
                                  image: 'assets/images/ring.png',
                                  name: 'Climax Smart Ring'
                                ),
                                _ConnectedDevices(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  image: 'assets/images/bracelet.png',
                                  name: 'Smart Bracelet'
                                ),
                          ],
                        )
                      )
                    )
                    ],
                  )
              ),
                Column(
                          children: [
                            RoundButton(
                              color: Color.fromARGB(255, 145, 10, 1),
                              buttonText: 'Call 911',
                            ),
                          ],
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