import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> images= [
    'asset/images/1878484_Saint Martins Island Bangladesh.jpg',
    'asset/images/saint-martin-s-island.jpg',
    'asset/images/Sunset-in-St-Martins-island.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,

        title: Text("Images Example"),
      ),
      body: ListView.separated(
        shrinkWrap: true,
          itemCount:images.length ,
          separatorBuilder: (context, child){
          return SizedBox(height: 4.0);
          },
          itemBuilder: (context, index){
            return Image.asset(
                fit:BoxFit.cover,
                images[index]);

          }),



    );
  }
}
