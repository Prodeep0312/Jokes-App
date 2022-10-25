import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: joke(),
  ));
}

class joke extends StatefulWidget {
  const joke({Key? key}) : super(key: key);

  @override
  State<joke> createState() => _jokeState();
}

class _jokeState extends State<joke> {
  var count = 0;
  var Joke = [
    'Learn programming to understand programming jokes.',
    'Code never lies,comments sometimes do.',
    'You are semicolons to my Statements',
    'Programming is 1% writing code and 99% understanding why its not working',
    'I told him I cound not open jar. He told me to download java',
    'Comparing java and javascript is same as comparing car and carpet',
    'Golden rule of programming - If it works dont touch it.'
  ];

  void getAnotherJoke() {
    setState(() {
      if (count == Joke.length - 1) {
        count = 0;
      } else {
        count = count + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jokes App'),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Text(
            '${Joke[count]}',
            style: TextStyle(
              fontSize: 35.0,
              fontStyle:FontStyle.italic,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getAnotherJoke,
        child: Icon(
          Icons.refresh,
          size: 50.0,
        ),
        backgroundColor: Colors.pink[400],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
