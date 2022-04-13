import 'package:final_project/home.dart';
import 'package:final_project/sons_models.dart';
import 'package:final_project/teacher_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Sons_Screen extends StatelessWidget {

  const Sons_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<SonModel> sons = [
      SonModel(

      name: 'محمد أحمد خالد ' ,
      name2: 'محمد خالد',
    ),
      SonModel(

        name: 'أيمن أحمد وليد تامر أسامة خالد ' ,
        name2: 'أيمن خالد',
      ),
      SonModel(

        name: 'وليد أحمد خالد ' ,
        name2: 'وليد خالد',
      ),

];
    return Scaffold(
      appBar: AppBar(
        title: Text('الأبناء'),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection:TextDirection.rtl,
        child:Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_page()));
                },
                child:
                ListView.separated(
                    scrollDirection: Axis.vertical,
                   // physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>Sons(sons[index]) ,
                    separatorBuilder:(context, index) =>SizedBox(height: 20,) ,
                    itemCount: sons.length)


),
            ],
          ),
        ),

      ),
    );
  }

  Widget Sons(SonModel son) => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Colors.grey[100],
    ),
    width: double.infinity,
    height: 100,

    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                image: const DecorationImage(
                  image: AssetImage('assets/images/imgg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),

            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text('${son.name}',style: TextStyle(fontSize: 16,overflow:TextOverflow.ellipsis ),),
                Text('${son.name2}',style: TextStyle(fontSize: 14 , color: Colors.green),),

              ],),
          ),
        ),
        const Expanded(
            flex:1 ,
            child: Icon(Icons.arrow_back_ios_new,color: Colors.grey,size: 20, )),
      ],
    ),
  );
}

