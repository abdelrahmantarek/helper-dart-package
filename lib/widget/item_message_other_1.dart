

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart' as intl;



class ItemMessageOther1 extends StatelessWidget {
  final String message;
  final String image;
  final bool showImage;
  const ItemMessageOther1({Key? key, required this.message, required this.image, this.showImage = false}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 1,horizontal: 1),
      child: Column(
        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              showImage ? Padding(
                padding: const EdgeInsets.only(left: 10,top: 0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(image),
                  radius: 10.sp,
                ),
              ) : const SizedBox(),

              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 13),
                      margin: const EdgeInsets.only(right: 12,left: 12),
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 1,
                                offset: const  Offset(0.0, 0.3),
                                color: Colors.grey.withOpacity(0.4))
                          ]),
                      child: Directionality(
                        textDirection: intl.Bidi.detectRtlDirectionality(message) ? TextDirection.rtl : TextDirection.ltr,
                        child: Text(
                          message,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 9.sp,
                              fontFamily: "Poppins",
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}