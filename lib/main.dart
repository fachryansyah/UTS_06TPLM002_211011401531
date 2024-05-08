import 'package:flutter/material.dart';

class Shoe {
  final String name;
  final String type;
  final String image;
  final Color color;

  Shoe({required this.name, required this.type, required this.image, required this.color});
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Shoe> shoes = [
    Shoe(color: Color(0xffd3c7e8), name: 'Nike SB Zoom Blazer', type: 'Mid Premium', image: 'https://static.nike.com/a/images/t_default/fdded470-0ac5-4bd7-b41b-1bb63e161438/custom-nike-air-force-1-mid-by-you-shoes.png'),
    Shoe(color: Color(0xffd4f9f3), name: 'Nike Air Zoom Pegasus', type: 'Men\'s Road Running Shoes', image: 'https://static.nike.com/a/images/t_default/fdded470-0ac5-4bd7-b41b-1bb63e161438/custom-nike-air-force-1-mid-by-you-shoes.png'),
    Shoe(color: Color(0xfffce9e9), name: 'Nike ZoomX Vaporfly', type: 'Men\'s Road Racing Shoe', image: 'https://static.nike.com/a/images/t_default/fdded470-0ac5-4bd7-b41b-1bb63e161438/custom-nike-air-force-1-mid-by-you-shoes.png'),
    Shoe(color: Color(0xffeaeaea), name: 'Nike Air Force 1 S50', type: 'Older Kids\' Shoe', image: 'https://static.nike.com/a/images/t_default/fdded470-0ac5-4bd7-b41b-1bb63e161438/custom-nike-air-force-1-mid-by-you-shoes.png'),
    Shoe(color: Color(0xfffdf3b3), name: 'Nike Waffle One', type: 'Men\'s Shoes', image: 'https://static.nike.com/a/images/t_default/fdded470-0ac5-4bd7-b41b-1bb63e161438/custom-nike-air-force-1-mid-by-you-shoes.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Shoes'),
        actions: [
          Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.only(top: 10.0),
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0Y5d1UdPhJnpN8uXDjNvTClvmmPxta_6EsW_Um3n5XA&s',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: shoes.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: shoes[index].color,
              borderRadius: BorderRadius.circular(12),

            ),
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0, bottom: 10.0),
            padding: new EdgeInsets.all(10.0),
            child: ListTile(
              title: Text(
                shoes[index].name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(shoes[index].type,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Container(
                height: 300,
                width: 100,
                child: Image.network(shoes[index].image, fit: BoxFit.cover,),
              ),
            ),
          );
        },
      ),
    );
  }
}