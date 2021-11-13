


import 'package:flutter/cupertino.dart';


extension ListViews on ScrollController{

  scrollLast(){
    animateTo(position.maxScrollExtent + 60,
      duration: const Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn,
    );
  }

}