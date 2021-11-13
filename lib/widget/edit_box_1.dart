

import 'package:flutter/material.dart';



class Fade extends StatelessWidget {
  final Color color;
  final Alignment start;
  final Alignment end;
  final double height;
  const Fade({Key? key, required this.color, this.start = Alignment.topCenter, this.end = Alignment.bottomCenter, this.height = 100}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        height:height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: start,
                end: end,
                colors: [
                  color,
                  color.withOpacity(0.7),
                  color.withOpacity(0.3),
                  color.withOpacity(0.0)
                  // Colors.transparent,
                ]
            )
        ),
      ),
    );
  }
}


class EditBox1 extends StatelessWidget {
  final GestureTapCallback onTapSend;
  final TextEditingController controller;
  const EditBox1({Key? key, required this.onTapSend, required this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 1),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Expanded(
                    flex: 6,
                    child: Container(
                      alignment: Alignment.center,
                      child: TextField(
                        controller: controller,
                        scrollPadding: const EdgeInsets.symmetric(vertical: 10),
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.black,
                        ),
                        maxLines: 5,
                        minLines: 1,
                        onChanged: (value){

                        },
                        textAlign: TextAlign.left,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                          hintText: "Type message",
                          alignLabelWithHint: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 0.9),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 0.9),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 0.9),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          hintStyle: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.grey,
                          ),
                          labelStyle: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )),

                Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [

                        Icon(
                          Icons.attach_file,
                          color: Colors.black,
                        ),
                        Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                        ),

                      ],
                    )),



              ],
            ),
          ),
        ),

        Container(width: 5,),

        FloatingActionButton(
          heroTag: " ",
          mini: true,
          backgroundColor: Theme.of(context).primaryColor,
          onPressed:onTapSend,
          child: const Icon(
            Icons.send,color: Colors.white,
            size: 17,
          ),
        ),

      ],
    );
  }
}
