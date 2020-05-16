import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote('Oscar wilde', 'be yourself; everyone is already taken'),
    Quote('Oscar wilde', 'i have nothing to declare but that i am genius'),
    Quote('Oscar wilde', 'the truth is raely pure or simple'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => Text('${quote.quote} - ${quote.author}')).toList(),
      ),
    );
  }
}
