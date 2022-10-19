import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_sunilsir/models/entries.dart';
import 'package:test_sunilsir/newfile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> images=[
   "images/img1.jpg'"
   "images/img2.jpg",
   "images/img3.jpg",
   "images/img4.jpg",
   ];
   List<String> calories=[
     "30 calories",
     "10 calories",
     "40 calories",
     "10 calories",
   ];
   List<String> doller=[
     "30 calories",
     "10 calories",
     "40 calories",
     "10 calories",
   ];
   List<String> names=[
     "pikachu",
     "tom and jarry",
     "teddy beer",
     "hachki",
   ];
   Price? list;
 bool _loading= false;
  void data() async{
  try{
    Response response= await Dio().get("http://jayanthi10.pythonanywhere.com/api/v1/list_popular_products/");
    setState(() {
      print(".................${response.data}");
      list=priceFromJson(jsonEncode(response.data));
      _loading=true;
    });
  }
  catch(e){
    setState(() {
    _loading=true;
      
    });
    print(e);
  }
}
 

  @override
  void initState() {
    // TODO: implement initState
    data();
  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: SingleChildScrollView(
     
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome',style: TextStyle(color: Color(0xff000002),fontSize: 20,fontWeight: FontWeight.bold),),
                 Text('What do youlike to find',style: TextStyle(color: Color(0xffbbbabf),fontSize: 20,fontWeight: FontWeight.bold),),
                 Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 270,
                          //decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                          child: TextField(
                                    //obscureText: true,
                                    decoration: InputDecoration(
                                     prefixIcon: Icon(Icons.search,color: Color(0xff8F8F8F),),
                                      //labelText: 'CONFIRM PASSWORD',
                                      border: OutlineInputBorder( 
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      hintText: 'Search Something',
                                    ),
                                  ),
                        ),
                         Container(
                            height: 59,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffff824b),
                              ),
                            child: Center(child: Icon(Icons.tune))
                          ),
                      ],
                    ),
                    Row(
                      children: [
                     Text('Categories',style: TextStyle(color: Color(0xff000002),fontSize: 20,fontWeight: FontWeight.bold),),
                     Icon(Icons.add,color: Colors.orangeAccent,)
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 85,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 248, 245, 245),
                            borderRadius: BorderRadius.circular(60)),
                            
                         child:Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('images/img1.jpg',width: 20,height: 20,
                            
                            fit: BoxFit.fitHeight,
                            ),
                            
                            Text('books'),
                            
                          ],
                         ) ,
                        ),
                        SizedBox(width: 15,),
                        Container(
                          height: 40,
                         width: 85,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 248, 245, 245),
                            borderRadius: BorderRadius.circular(60)),
                            
                         child:Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('images/img2.jpg',width: 20,height: 20,
                            fit: BoxFit.fitHeight,
                            ),//shape: BoxShape.circle,
                            
                            Text('animals')
                          ],
                         ) ,
                        ),
                        SizedBox(width: 15,),
                        Container(
                          height: 40,
                         width: 85,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 248, 245, 245),
                            borderRadius: BorderRadius.circular(60)),
                            
                         child:Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('images/img3.jpg',width: 20,height: 20,
                            fit: BoxFit.fitHeight,
                            ),//shape: BoxShape.circle,
                            
                            Text('bikes')
                          ],
                         ) ,
                        ),
                        SizedBox(width: 15,),
                        Container(
                          height: 40,
                          width: 85,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 248, 245, 245),
                            borderRadius: BorderRadius.circular(60)),
                            
                         child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('images/img4.jpg',width: 20,height: 20,
                            fit: BoxFit.fitHeight,
                            ),//shape: BoxShape.circle,
                            
                            Text('animals')
                          ],
                         ) ,
                        ),
                      ],
                    ),
                     Row(
                      
                      children: [
                     Text('Popular',style: TextStyle(color: Color(0xff000002),fontSize: 20,fontWeight: FontWeight.bold),),
                     Icon(Icons.add,color: Colors.orangeAccent,)
                      ],
                    ),
              
                    Column( 
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       
                      Container(
                        height: 540,
                        child: ListView.builder(
                        itemCount:images.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                              return New_page(
                                  images: 'http://jayanthi10.pythonanywhere.com/media/73_2_QExMmwu.jpg${list!.data![index].image}',
                          calories: '${list!.data![index].description}', 
                         doller: '${list!.data![index].price}',
                          names: '${list!.data![index].productId}');
                                 
                              
                        }),
                      )
                      ]
                            
                          ),
                      ],
             ),
              ],
            ),
        ),
      ),
        
    
      );
  }
}