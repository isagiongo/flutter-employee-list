import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:userlist/providers/users.dart';
import 'package:userlist/routes/app_routes.dart';
import 'package:userlist/views/user_form.dart';
import 'package:userlist/views/user_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Users(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: UserList(),
        routes: {
          //AppRoutes.HOME: (_) => UserList(),
          AppRoutes.USER_FOMR: (_) => UserForm()
        },
      ),
    );
  }
}
