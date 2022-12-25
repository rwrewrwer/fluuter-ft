import 'package:flutter/material.dart';
import 'page2.dart';
import 'bmi.dart';
import 'bmr.dart';
class MyStatefulWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _MyStatefulWidgetState(),
    backgroundColor: Colors.cyan,
    drawer: Drawer(

    child: ListView(
      padding: EdgeInsets.zero,
      children: [
    UserAccountsDrawerHeader(
    accountName: Text('User',style: TextStyle(fontSize: 20),),
    accountEmail: Text('userGmail@gmail.com',style: TextStyle(fontSize: 15),),
    currentAccountPicture:Image.asset('assets/190972.jpg'),
    decoration: BoxDecoration(color: Colors.deepOrange),
    ),
    ListTile(
    leading: Icon(Icons.home,size: 50,color: Colors.green,),
    title:  Text("首頁",style: TextStyle(fontSize: 25),),
    onTap: () {
      Navigator.pop(context, MaterialPageRoute(builder: (context) => MyStatefulWidget()));
    },
    ),
    ListTile(
    leading: Icon(Icons.calculate_outlined,size: 50,color: Colors.green,),
    title:  Text('bmi計算機',style: TextStyle(fontSize: 25),),
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => bmi()));
    },
    ),
        ListTile(
          leading: Icon(Icons.calculate_outlined,size: 50,color: Colors.green,),
          title:  Text('bmr計算機',style: TextStyle(fontSize: 25),),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => bmr()));
          },
        ),
    ListTile(
    leading: Icon(Icons.food_bank_outlined,size: 50,color: Colors.green,),
    title:  Text('餐廳',style: TextStyle(fontSize: 25),),
    onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Page02()));
          },
        ),
    ],
    ),
    ),
    );
  }
}

class _MyStatefulWidgetState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return(Container(color: Colors.greenAccent,
      padding: EdgeInsets.symmetric(vertical:20 ,horizontal:20),
      child: SizedBox(
        height: 1000,
        width: 1000,
        child: Container(

          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: Text('健康簡單看',style: TextStyle(fontSize: 40),),
              ),
              SizedBox(
                height: 350,
              ),
              SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Color(0xff31C27C)),
                    shadowColor: MaterialStateProperty.all(Colors.black),
                    elevation: MaterialStateProperty.all(10),
                    backgroundColor: MaterialStateProperty.all(Color(0xE7E2E2FF)),
                    foregroundColor: MaterialStateProperty.all(Color(0xff0c0303)),
                    side: MaterialStateProperty.all(BorderSide(width: 1,color: Color(0xff0c0303))),
                  ),
                  child: Text('開始',style: TextStyle(fontSize: 30),),
               onPressed:() {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Page02()));
               }
                ),
      ),
              SizedBox(
                height: 50,
                width: 100,
              ),
              SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(Color(0xff31C27C)),
                      shadowColor: MaterialStateProperty.all(Colors.black),
                      elevation: MaterialStateProperty.all(10),
                      backgroundColor: MaterialStateProperty.all(Color(0xE7E2E2FF)),
                      foregroundColor: MaterialStateProperty.all(Color(0xff0c0303)),
                      side: MaterialStateProperty.all(BorderSide(width: 1,color: Color(0xff0c0303))),
                    ),
                    child: Text('BMI計算機',style: TextStyle(fontSize: 30),),
                    onPressed:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => bmi()));
                    }
                ),
              )

            ],

          ),
          ),
        ),

    )

    );

  }
}