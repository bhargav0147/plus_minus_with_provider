import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier
{
    int i=0;

    void clear()
    {
        i=0;
        notifyListeners();
    }
    void plus()
    {
        i++;
        notifyListeners();
    }
    void minus()
    {
        i--;
        notifyListeners();
    }
    void two()
    {
        i=i*2;
        notifyListeners();
    }
    void four()
    {
        i=i*4;
        notifyListeners();
    }
}
