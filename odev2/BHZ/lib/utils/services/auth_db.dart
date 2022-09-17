import '../../models/auth_model.dart';

class AuthDB {
  static const List<AuthUser> users = [
    _user1,
    _user2,
    _user3,
    _user4,
    _user5,
    _user6,
    _user7
  ];
  static const AuthUser _user1 =
      AuthUser(email: 'test@1.com', password: 'hello', name: 'Elon Musk');
  static const AuthUser _user2 =
      AuthUser(email: 'test@2.com', password: 'hello', name: 'Warren Buffett');
  static const AuthUser _user3 =
      AuthUser(email: 'test@3.com', password: 'hello', name: 'Bill Gates');
  static const AuthUser _user4 =
      AuthUser(email: 'test@4.com', password: 'hello', name: 'Mark Zuckergerg');
  static const AuthUser _user5 =
      AuthUser(email: 'test@5.com', password: 'hello', name: 'Jeff Bezos');
  static const AuthUser _user6 =
      AuthUser(email: 'test@6.com', password: 'hello', name: 'Larry Page');
  static const AuthUser _user7 =
      AuthUser(email: 'test@7.com', password: 'hello', name: 'Sergey Brin');
}
