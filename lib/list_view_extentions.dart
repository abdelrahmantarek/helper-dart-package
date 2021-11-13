


import 'package:flutter/cupertino.dart';

extension ListViews on ScrollController{

  scrollLast(){
    animateTo(
      this.position.maxScrollExtent + 60,
      duration: Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn,
    );
  }

}