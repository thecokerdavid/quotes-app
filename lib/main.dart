import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotes_app/features/quotes/repository/quote_repository.dart';
import 'package:quotes_app/features/quotes/ui/quote_screen.dart';

void main() {
  runApp(const QuotesApp());
}

class QuotesApp extends StatelessWidget {
  const QuotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => QuotesRepository(),
      child: MaterialApp(
        title: 'Quotes App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const QuoteScreen(),
      ),
    );
  }
}
