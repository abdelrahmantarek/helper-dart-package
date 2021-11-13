

import 'package:flutter/material.dart';



class ListTile1 extends StatelessWidget {
  final String title;
  final String subTitle;
  final String? image;
  final String? trailing;
  final GestureTapCallback? onTap;
  const ListTile1({Key? key, this.title = "title", this.subTitle = "subtitle", this.image, this.trailing, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap:onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                image != null ?IconButton(onPressed: (){

                }, icon: CircleAvatar(
                  backgroundImage: Image.asset(image!).image,
                )) : Container(),

                const SizedBox(width: 15,),

                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title,textAlign: TextAlign.start,style: Theme.of(context).textTheme.bodyText1,),
                    Opacity(opacity: 0.5,child: Text(subTitle,maxLines: 3,textAlign: TextAlign.start,style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: Theme.of(context).textTheme.bodyText1!.fontSize! * 80 / 100),),),
                  ],
                )),

                const SizedBox(width: 5,),

                trailing != null ? Opacity(opacity: 0.5,child: Text(trailing!,textAlign: TextAlign.center,maxLines: 1,style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: Theme.of(context).textTheme.bodyText1!.fontSize! * 80 / 100),),) : Container(),

                const SizedBox(width: 10,)

              ],
            ),
          ),

        ],
      ),
    );
  }
}
