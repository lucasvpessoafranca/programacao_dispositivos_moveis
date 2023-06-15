import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/users.dart';
import 'package:flutter_application_1/routes/app_routes.dart';
import 'package:provider/provider.dart';

import '../models/user.dart';

class UserTile extends StatelessWidget {
  final User user;
  // const UserTile({super.key});
  const UserTile(this.user);
  @override
  Widget build(BuildContext context) {
    // ignore: unrelated_type_equality_checks
    final avatar = user.avatarUrl == false || user.avatarUrl.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    return ListTile(
      leading: avatar,
      title: Text(user.title),
      subtitle: Text(user.description),
      trailing: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.edit),
              color: Colors.orange,
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.USER_FORM,
                  arguments: user,
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: () {
                Provider.of<Users>(context, listen: false).remove(user);
              },
            )
          ],
        ),
      ),
    );
  }
}
