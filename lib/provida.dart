import 'package:flutter/foundation.dart';

class Indexprovider with ChangeNotifier
{
  int _selectedindex = 0;
  int get selectedindex => _selectedindex;

  void setindex(int index)
  {
    _selectedindex=index;
    notifyListeners();
  }
}

class Boolprovider with ChangeNotifier
{
  bool _passwordVisible = true;
  bool _showkey = false;

  bool get passwordVisible => _passwordVisible;
  bool get showkey => _showkey;

  void setpass()
  {
    _passwordVisible=!_passwordVisible;
    notifyListeners();
    //print('toggled password');
  }

  void setkey()
  {
    _showkey=!_showkey;
    notifyListeners();
    //print('toggled showkey');
  }
}