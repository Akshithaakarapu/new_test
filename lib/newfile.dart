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
                         height: 200,
                         width: 0,
                        
                        decoration: BoxDecoration(
                              color: Color.fromARGB(255, 79, 78, 78),
                              borderRadius: BorderRadius.circular(60)),
                            child: Row(
                              children: [
                                Image.asset(images,width: 200,height: 200,),
                                Column( crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Text(names,style: TextStyle(color: Color(0xff000002),fontSize: 20,fontWeight: FontWeight.bold),),
                                    Text(calories,style: TextStyle(color: Color(0xffbbbabf),fontSize: 20,fontWeight: FontWeight.bold),),
                                    Row(
                                      children: [
                                        Icon(Icons.alarm),
                                        Text('20-30mins',style: TextStyle(color: Color(0xffbbbabf),fontSize: 15,fontWeight: FontWeight.bold),),
                                        Text(doller,style: TextStyle(color: Color(0xffbbbabf),fontSize: 20,fontWeight: FontWeight.bold),),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.star),
                                                Text('5.0',style: TextStyle(color: Color(0xffbbbabf),fontSize: 15,fontWeight: FontWeight.bold),),
                                              ],
                                            ),
                                            Icon(Icons.favorite)
                                          ],
                                        )
                                        
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )  
                            );
  }
}