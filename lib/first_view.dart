import 'package:bmi_calculator/Button/gender_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class first_view extends StatefulWidget {

  @override
  _first_viewState createState() => _first_viewState();
}

class _first_viewState extends State<first_view> {
  double _sliderValue = 6;
  double size = 50;
  int weight = 0;
  int age = 1;

  Color widgetColor = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Colors.grey,
      ),

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.yellow,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment
            children:[
              Spacer(),

              Row(
                children: [
                  GenderButton(position: 0, text: Text('MALE'),icon: Icon(FontAwesomeIcons.mars), fontSize: 50, color: Colors.blue,),
                  Spacer(),

                  GenderButton(position: 1, text: Text('FEMALE'),icon: Icon(FontAwesomeIcons.venus), fontSize: 50, color: Colors.pink,),

                ],
              ),
              Spacer(),
              Row(

                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(color: widgetColor,borderRadius: BorderRadius.all(Radius.circular(20))),
                      // padding: EdgeInsets.symmetric(horizontal:10),
                      height: 150,
                      // color: Colors.tealAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Select Height'),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text('${_sliderValue.toStringAsFixed(0)} cm'),
                            ]
                          ),

                          Row(
                            children: [
                              Expanded(
                                child: Slider(
                                  value: _sliderValue,
                                  min: 0,
                                  max:240,
                                  inactiveColor: Colors.black,
                                  divisions: 240,
                                  onChanged: (newValue){
                                    setState(() {
                                      _sliderValue = newValue;
                                    },
                                    );

                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),

              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: widgetColor,
                    ),
                    height: 150,
                    width: 150,
                    // color: widgetColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Weight'),
                        Text('$weight'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed:(){
                                  setState(() {
                                    if(weight>0) {
                                      weight--;
                                    }
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                ),
                                child: Icon( Icons.keyboard_arrow_down),
                            ),
                            ElevatedButton(
                              onPressed:(){
                                setState(() {
                                  weight++;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                              ),
                              child: Icon( Icons.keyboard_arrow_up),
                            ),
                          ],
                        )


                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: widgetColor,
                    ),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Age'),
                        Text('$age'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed:(){
                                setState(() {
                                  if(age>0 && age<115) {
                                    age--;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                              ),
                              child: Icon( Icons.keyboard_arrow_down),
                            ),
                            ElevatedButton(
                              onPressed:(){
                                setState(() {
                                  age++;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                              ),
                              child: Icon( Icons.keyboard_arrow_up),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),


              Spacer(),

              Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(

                  ),
                    onPressed: (){},
                    child: Text('Calculate BMI')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
