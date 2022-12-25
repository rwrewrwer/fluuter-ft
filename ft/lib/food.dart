import 'package:flutter/material.dart';
import 'page2.dart';
import 'contain.dart';
import 'home.dart';
import 'bmi.dart';
import 'bmr.dart';
class food extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _food(),
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
  }}

class _food extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return(Container(color: Colors.greenAccent,
        padding: EdgeInsets.symmetric(vertical:20 ,horizontal:20),
        child: Column(
            children: <Widget>[
              SizedBox(

                height: 50,
                width: 600,
                child: SizedBox.expand(
                    child:Container(color: Color.fromRGBO(100, 100, 50, 0.5),
                        child:Center(
                          child: Text('食物列表',style: TextStyle(fontSize: 35),),
                        ))),
              ),
        Expanded(
            child: SingleChildScrollView(
              child: SizedBox(
                height:1600 ,
                width: 1000,
                child: Container
                  (
                  color: Colors.white70,
                  child: Column(
                    children: [
                      SizedBox(height: 300,width: 600,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 1000,
                              child:Container(
                                child:Center(
                                  child: Text('雞塊',style: TextStyle(fontSize: 30),),
                                ),
                              ) ,),
                            SizedBox(
                              child: Row(
                                children: [
                                  SizedBox(
                                    height:250,
                                    width: 300,
                                      child: Image.asset('assets/S__67731461.jpg'),

                                  ),
                                  SizedBox(
                                    height: 250,
                                    width: 71,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        overlayColor: MaterialStateProperty.all(Color(0xff31C27C)),
                                        backgroundColor: MaterialStateProperty.all(Color(0xE7E2E2FF)),
                                        foregroundColor: MaterialStateProperty.all(Color(0xff0c0303)),
                                        side: MaterialStateProperty.all(BorderSide(width: 1,color: Color(0xff0c0303))),
                                      ),
                                      child: Text('進入'),
                                      onPressed:(){
                                      } ,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 300,width: 600,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 1000,
                              child:Container(
                                child:Center(
                                  child: Text('鍋燒冬粉',style: TextStyle(fontSize: 30),),
                                ),
                              ) ,),
                            SizedBox(
                              child: Row(
                                children: [
                                  SizedBox(
                                    height:250,
                                    width: 300,
                                    child: Image.asset('assets/S__67731463.jpg'),

                                  ),
                                  SizedBox(
                                    height: 250,
                                    width: 71,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        overlayColor: MaterialStateProperty.all(Color(0xff31C27C)),
                                        backgroundColor: MaterialStateProperty.all(Color(0xE7E2E2FF)),
                                        foregroundColor: MaterialStateProperty.all(Color(0xff0c0303)),
                                        side: MaterialStateProperty.all(BorderSide(width: 1,color: Color(0xff0c0303))),
                                      ),
                                      child: Text('進入'),
                                      onPressed:(){

                                      } ,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 300,width: 600,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 1000,
                              child:Container(
                                child:Center(
                                  child: Text('紅燒牛肉麵',style: TextStyle(fontSize: 30),),
                                ),
                              ) ,),
                            SizedBox(
                              child: Row(
                                children: [
                                  SizedBox(
                                    height:250,
                                    width: 300,
                                    child: Image.asset('assets/S__67731464.jpg'),

                                  ),
                                  SizedBox(
                                    height: 250,
                                    width: 71,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        overlayColor: MaterialStateProperty.all(Color(0xff31C27C)),
                                        backgroundColor: MaterialStateProperty.all(Color(0xE7E2E2FF)),
                                        foregroundColor: MaterialStateProperty.all(Color(0xff0c0303)),
                                        side: MaterialStateProperty.all(BorderSide(width: 1,color: Color(0xff0c0303))),
                                      ),
                                      child: Text('進入'),
                                      onPressed:(){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => food_contain()));
                                      } ,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 300,width: 600,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 1000,
                              child:Container(
                                child:Center(
                                  child: Text('滷雞腿飯',style: TextStyle(fontSize: 30),),
                                ),
                              ) ,),
                            SizedBox(
                              child: Row(
                                children: [
                                  SizedBox(
                                    height:250,
                                    width: 300,
                                    child: Image.asset('assets/S__67731465.jpg'),

                                  ),
                                  SizedBox(
                                    height: 250,
                                    width: 71,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        overlayColor: MaterialStateProperty.all(Color(0xff31C27C)),
                                        backgroundColor: MaterialStateProperty.all(Color(0xE7E2E2FF)),
                                        foregroundColor: MaterialStateProperty.all(Color(0xff0c0303)),
                                        side: MaterialStateProperty.all(BorderSide(width: 1,color: Color(0xff0c0303))),
                                      ),
                                      child: Text('進入'),
                                      onPressed:(){

                                      } ,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 300,width: 600,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 1000,
                              child:Container(
                                child:Center(
                                  child: Text('海帶湯',style: TextStyle(fontSize: 30),),
                                ),
                              ) ,),
                            SizedBox(
                              child: Row(
                                children: [
                                  SizedBox(
                                    height:250,
                                    width: 300,
                                    child: Image.asset('assets/S__67731466.jpg'),

                                  ),
                                  SizedBox(
                                    height: 250,
                                    width: 71,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        overlayColor: MaterialStateProperty.all(Color(0xff31C27C)),
                                        backgroundColor: MaterialStateProperty.all(Color(0xE7E2E2FF)),
                                        foregroundColor: MaterialStateProperty.all(Color(0xff0c0303)),
                                        side: MaterialStateProperty.all(BorderSide(width: 1,color: Color(0xff0c0303))),
                                      ),
                                      child: Text('進入'),
                                      onPressed:(){

                                      } ,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )


                )),
              )),

        ])));
  }
}