import 'package:flutter/material.dart';

void main() => runApp(PizzaHomePage());

class PizzaHomePage extends StatelessWidget {
   PizzaHomePage({Key key}) : super(key: key);

  final List<String> cardImages = [
    'assets/pizza4jpeg',
    'assets/pizza3.jpeg',
    'assets/pizza1.jpeg',
  ];

  final List<String> cardTitles = [
    'American pizza',
    'Somali pizza',
    'korean pizza',
  ];

  final List<Widget> cardActions = [
    IconButton(
      icon: Icon(Icons.favorite),
      color: Colors.white,
      onPressed: () {
       
      },
    ),
    IconButton(
      icon: Icon(Icons.share),
      color: Colors.white,
      onPressed: () {
       
      },
    ),
    IconButton(
      icon: Icon(Icons.shopping_cart),
      color: Colors.white,
      onPressed: () {

      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('PIzza Home'),
        ),
        body: ListView.builder(
          itemCount: cardImages.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.deepOrangeAccent,
              margin: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(cardImages[index]),
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(width: 10),
                    Text(
                      cardTitles[index],
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    cardActions[index], 
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}