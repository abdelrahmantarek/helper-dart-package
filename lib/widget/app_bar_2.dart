

import 'package:flutter/material.dart';




class AppBar2 extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final String lastSeen;
  const AppBar2({Key? key, this.title = "Title", this.lastSeen = "00:00"}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 5,),
          Expanded(child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){
                 Navigator.of(context).pop();
              }, icon: Icon(Icons.arrow_back_outlined))
            ],
          )),
          SizedBox(width: 15,),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyText1,),
            ],
          )),
          Expanded(child: SizedBox(width: 30,)),

          SizedBox(width: 5,),
        ],
      ),
    );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}

