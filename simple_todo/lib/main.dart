import 'package:flutter/material.dart';
import 'package:flutter_bloc_pattern/flutter_bloc_pattern.dart';
import 'package:simple_todo/data/app_db.dart';
import 'package:simple_todo/data/mapper.dart';
import 'package:simple_todo/data/todo_repo_impl.dart';
import 'package:flutter_provider/flutter_provider.dart';
import 'package:simple_todo/ui/home/home_bloc.dart';
import 'package:simple_todo/ui/home/home_page.dart';

import 'domain/todo_repo.dart';

void main() {
  final appDb = AppDb();
  final todoDao = appDb.todoDao;
  final mappers = Mappers();

  final TodoRepo todoRepo = TodoRepoImpl(
    todoDao,
    mappers,
  );

  runApp(
    Provider<TodoRepo>(
      child: MyApp(),
      value: todoRepo,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeBloc = HomeBloc(Provider.of<TodoRepo>(context));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<HomeBloc>(
        child: MyHomePage(),
        initBloc: () => homeBloc,
      ),
    );
  }
}