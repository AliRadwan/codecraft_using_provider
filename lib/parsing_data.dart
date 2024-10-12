import 'dart:convert';

import 'package:codecraft/mock_data.dart';
import 'package:codecraft/models/book.dart';
import 'package:flutter/material.dart';

class ParsingDataView extends StatelessWidget {
  const ParsingDataView({super.key});

  @override
  Widget build(BuildContext context) {

    // Parse JSON
    final jsonMap = json.decode(jsonString) as Map<String, dynamic>;
    final book = Book.fromJson(jsonMap);
    final book2 = Book.fromJson(jsonMap);

    // Create a modified copy
    final updatedBook = book.copyWith(pageCount: 400);
    final updatedBook1 = book.copyWith(id: '2222');

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(book== book2)...[
              Text('Original Book: ${book.title} by ${book.author}'),
              Text('Original Book: ${book.title} by ${book.author}'),
              Text('Page Count: ${book.pageCount}'),
              Text('Published Date: ${book.publishedDate}'),
            ],

            const SizedBox(height: 20),
            Text('Updated Book: ${updatedBook.title} by ${updatedBook.author}'),
            Text('Updated Page Count: ${updatedBook.pageCount}'),
            const SizedBox(height: 20),
            Text('JSON: ${json.encode(updatedBook.toJson())}'),
          ],
        ),
      ),
    );
  }
}