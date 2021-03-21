import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenderButton extends StatefulWidget {
  GenderButton({@required this.text,@required this.icon, this.fontSize, @required this.position, @required this.color});

  final Text text;
  final Icon icon;
  final int fontSize;
  final int position;
  final Color color;

  @override
  _GenderButtonState createState() => _GenderButtonState();
}

class _GenderButtonState extends State<GenderButton> {
  double size = 100;
  int currentPosition = 3;
  TextStyle textStyle = TextStyle(fontSize: 15,fontWeight: FontWeight.bold, letterSpacing: 1);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: currentPosition == widget.position ? widget.color : Colors.grey,

          borderRadius: BorderRadius.all(Radius.circular(20))),
      height: 150,
      width: 150,
      // color: Colors.tealAccent,
      child: Column(
        children: [
          IconButton(
              icon: widget.icon,
              iconSize: size,
              onPressed:(){

                  changeColor(widget.position);
              },
          ),

          Text("${widget.text.data}",style: textStyle,)
        ],
      ),
    );
  }

  void changeColor(int position){
    setState(() {
      currentPosition = position;
    });
  }
}

