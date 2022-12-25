import 'package:flutter/material.dart';
import 'page2.dart';
import 'home.dart';
import 'bmi.dart';
import 'bmr.dart';
class food_contain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _foodcontain(),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page02()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _foodcontain extends StatefulWidget
{
  @override
  _food_contain createState() => _food_contain();

}
class _food_contain extends State
{

  @override
  Widget build(BuildContext context){
    return(Container(
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      color: Colors.greenAccent,
      child: Column(
        children: [
          SizedBox(
            height: 50,
            width: 500,
            child: SizedBox.expand(
                child:Container(color: Color.fromRGBO(100, 100, 50, 0.5),
                    child:Center(
                      child: Text('內容物列表',style: TextStyle(fontSize: 35),),
                    ))),
          ),
        Expanded(
          child: SingleChildScrollView(
            child: SizedBox(
              height: 1500,
              width: 1000,
              child: Container
                (
                padding: EdgeInsets.symmetric(vertical:5,horizontal:15 ),
                color: Colors.cyan,
                child: Column(
                  children: [
                  SizedBox(height: 50, width: 1000,
                  child: Container(color: Colors.black,
                      child: Center(child:Text('紅蘿蔔',style: TextStyle(fontSize: 20,color: Colors.white),),)
                  ),
                ),
                    SizedBox(height: 180,width: 1000,
                      child: Container(color: Colors.white,margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Column(
                          children: [
                            Text("熱量:37 kcal",style: TextStyle(fontSize: 20)),
                            Text("粗蛋白:1 g",style: TextStyle(fontSize: 20)),
                            Text("飽和脂肪:0.2 g",style: TextStyle(fontSize: 20)),
                            Text("反式脂肪:0 mg",style: TextStyle(fontSize: 20)),
                            Text("鈉:67 mg",style: TextStyle(fontSize: 20)),
                          ],
                        )
                      ),),
                    SizedBox(height: 50, width: 1000,
                      child: Container(color: Colors.black,
                          child: Center(child:Text('白蘿蔔',style: TextStyle(fontSize: 20,color: Colors.white),),)
                      ),
                    ),
                    SizedBox(height: 180,width: 1000,
                      child: Container(color: Colors.white,margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child:Column(
                          children: [
                            Text("熱量:16 kcal",style: TextStyle(fontSize: 20)),
                            Text("粗蛋白:0.7 g",style: TextStyle(fontSize: 20)),
                            Text("飽和脂肪:0 g",style: TextStyle(fontSize: 20)),
                            Text("反式脂肪:0 mg",style: TextStyle(fontSize: 20)),
                            Text("鈉:27 mg",style: TextStyle(fontSize: 20)),
                          ],
                        )
                      ),),
                    SizedBox(height: 50, width: 1000,
                      child: Container(color: Colors.black,
                          child: Center(child:Text('牛腱',style: TextStyle(fontSize: 20,color: Colors.white),),)
                      ),
                    ),
                    SizedBox(height: 180,width: 1000,
                      child: Container(color: Colors.white,margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Column(
                          children: [
                            Text("熱量:139 kcal",style: TextStyle(fontSize: 20)),
                            Text("粗蛋白:19.8 g",style: TextStyle(fontSize: 20)),
                            Text("飽和脂肪:2.6 g",style: TextStyle(fontSize: 20)),
                            Text("反式脂肪:0 mg",style: TextStyle(fontSize: 20)),
                            Text("鈉:79 mg",style: TextStyle(fontSize: 20)),
                          ],
                        )
                      ),),
                    SizedBox(height: 50, width: 1000,
                      child: Container(color: Colors.black,
                          child: Center(child:Text('青江菜',style: TextStyle(fontSize: 20,color: Colors.white),),)
                      ),
                    ),
                    SizedBox(height: 180,width: 1000,
                      child: Container(color: Colors.white,margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child:Column(
                          children: [
                            Text("熱量:15 kcal",style: TextStyle(fontSize: 20)),
                            Text("粗蛋白:1.5 g",style: TextStyle(fontSize: 20)),
                            Text("飽和脂肪:0 g",style: TextStyle(fontSize: 20)),
                            Text("反式脂肪:0 mg",style: TextStyle(fontSize: 20)),
                            Text("鈉:92 mg",style: TextStyle(fontSize: 20)),
                          ],
                        )
                      ),),
                    SizedBox(height: 50, width: 1000,
                      child: Container(color: Colors.black,
                          child: Center(child:Text('刀削麵',style: TextStyle(fontSize: 20,color: Colors.white),),)
                      ),
                    ),
                    SizedBox(height: 180,width: 1000,
                      child: Container(color: Colors.white,margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child:Column(
                          children: [
                            Text("熱量:267 kcal",style: TextStyle(fontSize: 20)),
                            Text("粗蛋白:8.4 g",style: TextStyle(fontSize: 20)),
                            Text("飽和脂肪:0.4 g",style: TextStyle(fontSize: 20)),
                            Text("反式脂肪:0 mg",style: TextStyle(fontSize: 20)),
                            Text("鈉:226 mg",style: TextStyle(fontSize: 20)),
                          ],
                        )
                      ),),

                  ],
                ),
              ),
            )
          )
        )
        ],
      )
    )




    );

  }
}

