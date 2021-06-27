import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Walt Disney', text: 'If you can dream it, you can do it.'),
    Quote(author: 'Charles R. Swindoll', text:'Life is 10% what happens to you and 90% how you react to it.'),
    Quote(author: 'Mark Twain', text:'The secret of getting ahead is getting started.')
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
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
           setState(() {
             quotes.remove(quote);
           });
          }
        )).toList(),
      ),
    );
  }
}



