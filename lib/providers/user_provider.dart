import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../models/user_model.dart';
import '../services/user_service.dart';

class UserProvider extends ChangeNotifier {
  UserModel? userData;

  static UserProvider getObject(context) =>
      Provider.of<UserProvider>(context, listen: false);

  Future<void> fetchUsers() async {
    userData = await UserService.fetchRandomUsers();
    notifyListeners();
  }
}
