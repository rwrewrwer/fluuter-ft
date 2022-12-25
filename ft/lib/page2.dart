import 'package:flutter/material.dart';
import 'package:ft/food.dart';
import 'home.dart';
import 'bmr.dart';
import 'bmi.dart';
class Page02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _page2(),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyStatefulWidget()));
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
                Navigator.pop(context, MaterialPageRoute(builder: (context) => Page02()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return(Container(color: Colors.greenAccent,
        padding: EdgeInsets.symmetric(vertical:20 ,horizontal:20),
        child: Column(
          children: <Widget>[
           SizedBox(

              height: 50,
              width: 500,
              child: SizedBox.expand(
                child:Container(color: Color.fromRGBO(100, 100, 50, 0.5),
                    child:Center(
                      child: Text('餐廳列表',style: TextStyle(fontSize: 35),),
                ))),
            ),
        Expanded(
            child: SingleChildScrollView(
              child:Row(
              children: [
                SizedBox(
                height:150,
                width: 319,
                  child: Image.asset('assets/food2.jpg',
                  fit:BoxFit.fill),
                ),
                SizedBox(
                height:150,
                width: 52,
                    child:Column(
                      children: [
                        SizedBox(
                          height:75,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(Color(0xff31C27C)),
                              backgroundColor: MaterialStateProperty.all(Color(0xE7E2E2FF)),
                              foregroundColor: MaterialStateProperty.all(Color(0xff0c0303)),
                              side: MaterialStateProperty.all(BorderSide(width: 1,color: Color(0xff0c0303))),
                            ),
                            child:Text('進入',style: TextStyle(fontSize: 20),) ,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => food()));
                            },
                          ),
                        ),
                        SizedBox(
                          height:75,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(Color(0xff31C27C)),
                              backgroundColor: MaterialStateProperty.all(Color(0xE7E2E2FF)),
                              foregroundColor: MaterialStateProperty.all(Color(0xff0c0303)),
                              side: MaterialStateProperty.all(BorderSide(width: 1,color: Color(0xff0c0303))),
                            ),
                            child:Text('位置',style: TextStyle(fontSize: 20),) ,
                            onPressed: (){
                           showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: Text("台南市歸仁區長大路60號"),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(ctx).pop();
                                      },
                                      child: Text("Ok"),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    )
                )
                ]),
            ))

    ])));
  }
}
