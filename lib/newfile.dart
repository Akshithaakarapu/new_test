import 'package:flutter/material.dart';

class New_page extends StatelessWidget {
  const New_page({required this.images, required this.calories,required this.doller,required this.names});
  final String images;
   final String calories;
    final String doller;
    final String names;
  

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 220,
            width: 41,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 245, 243, 242),
              borderRadius: BorderRadius.circular(20)),
            child:
            Row(
            children: [
              Image.network(images,width: 100,height: 100,),
              SizedBox(width: 10,),
              Column( 
                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Padding(
                                       padding: const EdgeInsets.only(top: 30),
                                       child: Text(names,style: TextStyle(color: Color(0xff000002),fontSize: 20,fontWeight: FontWeight.bold),),
                                     ),
                                     SizedBox(
                                      height: 10,
                                      ),
                                    Text(calories,style: TextStyle(color: Color(0xffbbbabf),fontSize: 20,fontWeight: FontWeight.bold),),
                                    SizedBox(
                                      height: 10,
                                      ),
                                    Row(
                                      children: [
                                        Icon(Icons.alarm),
                                        Text('20-30mins',style: TextStyle(color: Color(0xffbbbabf),fontSize: 15,fontWeight: FontWeight.bold),),
                                        SizedBox(
                                      width: 25,
                                      ),
                                        Icon(Icons.star,color: Colors.orangeAccent,),
                                         Text('5.0',style: TextStyle(color: Color(0xffbbbabf),fontSize: 15,fontWeight: FontWeight.bold),), 

                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                      ),
                                     Column(
                                          children: [
                                           Text(doller,style: TextStyle(color: Color(0xffbbbabf),fontSize: 15,fontWeight: FontWeight.bold),),
                                          ],
                                        )
                                  ],
                                ),
                            Padding(
                              padding: const EdgeInsets.only(top: 120),
                              child: Icon(Icons.favorite),
                            ),
                            ]
                            ),
                             );
  }
}