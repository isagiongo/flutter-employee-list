import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:userlist/components/user_tile.dart';
import 'package:userlist/providers/users.dart';
import 'package:userlist/routes/app_routes.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Employee List'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.USER_FOMR);
            },
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: users.count,
          itemBuilder: (contexto, i) => UserTile(users.byIndex(i))),
    );
  }
}
