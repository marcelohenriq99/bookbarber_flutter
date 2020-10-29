import 'package:bookbarber/models/user.dart';
import 'package:flutter/material.dart';

class UserProvider extends InheritedWidget {
  const UserProvider({
    Key key,
    @required this.currentUser,
    @required Widget child,
  })  : assert(child != null),
        super(key: key, child: child);
  //privde current user in this app...
  final User currentUser;

  static UserProvider of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(UserProvider) as UserProvider;
  }

  @override
  bool updateShouldNotify(UserProvider old) => currentUser != old.currentUser;
}
