import 'package:flutter/material.dart';
import 'page2.dart';
import 'home.dart';
import 'bmr.dart';
class bmi extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:_bmi() ,
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

class _bmi extends StatefulWidget
{
  @override
  computebmi createState() => computebmi();

}
class computebmi extends State
{
  TextEditingController nameControllerw=TextEditingController();
  TextEditingController nameControllerh=TextEditingController();

  String _outputbmi = '';
  String ouput="";
  int? selectedValue;
  String t1="";
  void computeg()
  {
    var weightg;
    var heightg;
    var bmig;

    weightg = double.parse(nameControllerw.text);
    heightg = double.parse(nameControllerh.text);

    if(heightg>3)
    {
      heightg = heightg/100 ;
    }
    bmig = weightg/(heightg*heightg);
    formatNum(bmig, int postion) {
      if ((bmig.toString().length - bmig.toString().lastIndexOf(".") - 1) < postion) {
        //小數點後有幾位小數
        t1 = bmig.toStringAsFixed(postion).substring(0, bmig.toString().lastIndexOf(".") + postion + 1).toString();
      }
      else {
        t1 = bmig.toString().substring(0, bmig.toString().lastIndexOf(".") + postion + 1).toString();
      }
    }
    formatNum(bmig, 2);



        if(bmig < 18.5)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "過輕";
        }
        else if(bmig >= 18.5 && bmig < 24)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "正常";
        }
        else if(bmig >=24 && bmig <27)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "過重";
        }
        else if(bmig >=27)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "肥胖";
        }



  }
  void computeb()
  {
    var weightb;
    var heightb;
    var bmib;

    weightb = double.parse(nameControllerw.text);
    heightb = double.parse(nameControllerh.text);
    if(heightb>3)
    {
      heightb = heightb/100 ;
    }
    bmib = weightb/(heightb*heightb);
    formatNum(bmib, int postion) {
      if ((bmib.toString().length - bmib.toString().lastIndexOf(".") - 1) < postion) {
        //小數點後有幾位小數
        t1 = bmib.toStringAsFixed(postion).substring(0, bmib.toString().lastIndexOf(".") + postion + 1).toString();
      }
      else {
        t1 = bmib.toString().substring(0, bmib.toString().lastIndexOf(".") + postion + 1).toString();
      }
    }
    formatNum(bmib, 2);

        if(bmib < 18.5)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "過輕";
        }
        else if(bmib >= 18.5 && bmib < 24)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "正常";
        }
        else if(bmib >=24 && bmib <27)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "過重";
        }
        else if(bmib >=27)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "肥胖";
        }

  }
  @override
  Widget build(BuildContext context) {
    final btnd = DropdownButton(
      items: const <DropdownMenuItem> [
        DropdownMenuItem(
          child:  Text('男', style: TextStyle(fontSize: 20),),
          value: 1,
        ),
        DropdownMenuItem(
          child:  Text('女', style: TextStyle(fontSize: 20),),
          value: 2,
        ),

      ],
      onChanged: (dynamic value) {
        setState(() {
          selectedValue = value as int;
        });
      },
      hint: const Text('請選擇性別', style: TextStyle(fontSize: 20),),
      value: selectedValue,
    );




    final nameFieldw = TextField(
      keyboardType: TextInputType.number,
      controller: nameControllerw,
      style: const TextStyle(fontSize: 20),
      decoration: const InputDecoration(
        labelText: '輸入體重',
        labelStyle: TextStyle(fontSize: 20),
      ),
    );


    final nameFieldh = TextField(
      keyboardType: TextInputType.number,
      controller: nameControllerh,
      style: const TextStyle(fontSize: 20),
      decoration: const InputDecoration(
        labelText: '輸入身高',
        labelStyle: TextStyle(fontSize: 20),
      ),
    );

    final btn = TextButton(
      style: ButtonStyle(

        overlayColor: MaterialStateProperty.all(Color(0xff31C27C)),
        backgroundColor: MaterialStateProperty.all(Color(0xE7E2E2FF)),
        foregroundColor: MaterialStateProperty.all(Color(0xff0c0303)),
        side: MaterialStateProperty.all(BorderSide(width: 1,color: Color(0xff0c0303))),
      ),
      child: Text('計算',style: TextStyle(fontSize: 25,),),

      onPressed: () => setState(() {

        if(btnd.value == 1)
        {
          computeb();

        }
        else if (btnd.value == 2)
        {
          computeg();
        }



      }),
    );


    return Center(
      child:Container(
        color: Colors.greenAccent,
      child: Column(
        children: <Widget>[
          Container(child: const Text('性別', style: TextStyle(fontSize: 20)), margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
            alignment: Alignment.center,),
          Container(child: btnd, margin: const EdgeInsets.symmetric(vertical: 10),),
          Container(child: nameFieldh, width: 200, margin: const EdgeInsets.symmetric(vertical: 10),),
          Container(child: nameFieldw, width: 200, margin: const EdgeInsets.symmetric(vertical: 10),),
          Container(child: SizedBox(height:100 ,width:100 ,),),
          Container(child: Text(_outputbmi, style: const TextStyle(fontSize: 20)),),
          Container(child: Text(ouput, style: const TextStyle(fontSize: 20)),),
          Container(child: SizedBox(height:100 ,width:100 ,),),
          Container(child: SizedBox(height: 50,width: 200,child: btn,)),
        ],
      ),)
    );



  }



}