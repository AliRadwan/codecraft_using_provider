import 'package:codecraft/mock_data.dart';
import 'package:codecraft/users/repositories/i_user_type.dart';
import 'package:codecraft/users/repositories/implementation/guest_Type.dart';
import 'package:codecraft/users/repositories/implementation/owner_type.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'models/book.dart';

void main() {
  runApp(const MyApp());
  UserType userType1 = Owner();
  UserType userType2 = Guest();
  getUserType(userType1);
  getUserType(userType2);
}

void getUserType(UserType userType){
  userType.getUserType();
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        body: BookDemo(),
      ),
    );
  }
}

class BookDemo extends StatelessWidget {
  const BookDemo({super.key});

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