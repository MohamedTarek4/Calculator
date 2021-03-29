import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:math_expressions/math_expressions.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    title: "Calculator",
    debugShowCheckedModeBanner: false,
    home: MyHome(),
  ));
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  SizedBox _sizedBoxWidth = new SizedBox(
    width: 20.0,
  );

  SizedBox _sizedBoxHieght = new SizedBox(
    height: 20.0,
  );

  SizedBox _sizedBoxHieght100 = new SizedBox(
    height: 100.0,
  );

  var txt = TextEditingController(); //textfield
  var res = TextEditingController();
  //the operations
  //addition
  String add = '+';
  //subtraction
  String sub = '-';
  //moltiplication
  String molti = '*';
  //division
  String div = '/';
  //modules
  String mod = '%';
  String expresion = "";
  String equation = "";
  String result = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///////////////////////////padding from right and left with a value 10//////////////////////////
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 10.0, left: 20.0),

          ///////////////////////////column//////////////////////////
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //////////////////////////////////////////////////////////////////////////
              ///////////////////////////////The first item in the column///////////////
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 220.0),
                child: Container(
                  child: TextField(
                    controller: res,
                    decoration: InputDecoration(
                        fillColor: Colors.lightBlue,
                        focusColor: Colors.lightBlue,
                        hoverColor: Colors.lightBlue,
                        border: InputBorder.none,
                        hintText: '$result'),
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              //////////////////////////////////////////////////////////////////////////

              Padding(
                padding: const EdgeInsets.only(top: 15, left: 170),
                child: TextField(
                  controller: txt,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Add an operation'),
                ),
              ),

              //////////////////////////////////////////////////////////////////////////
              /////////////////////////////////////////////////////////////////////////////

              _sizedBoxHieght100,

              //////////////////////////////////////////////////////////////////////////
              /////////////////////////////////////////////////////////////////////////////
              Row(
                children: [
                  _sizedBoxWidth,
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      equation = "";
                      result = "0";
                      txt.text = equation;
                      res.text = result;
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      "C",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ),
                  _sizedBoxWidth,
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: null,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      "+ / -",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ),
                  _sizedBoxWidth,
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      equation = equation + "%";
                      txt.text = equation;
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      "%",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ),
                  _sizedBoxWidth,
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      equation = equation + "/";
                      txt.text = equation;
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      "/",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ),
                ],
              ),
              _sizedBoxHieght,
              //////////////////////////////////////////////////////////////////////////
              /////////////////////////////////////////////////////////////////////////////
              Row(
                children: [
                  _sizedBoxWidth,
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      equation = equation + "7";
                      txt.text = equation;
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      "7",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  _sizedBoxWidth,
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      equation = equation + "8";
                      txt.text = equation;
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      "8",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  _sizedBoxWidth,
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      equation = equation + "9";
                      txt.text = equation;
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      "9",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  _sizedBoxWidth,
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      equation = equation + "*";
                      txt.text = equation;
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      "*",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ),
                ],
              ),
              _sizedBoxHieght,
              //////////////////////////////////////////////////////////////////////////
              /////////////////////////////////////////////////////////////////////////////
              Row(
                children: [
                  _sizedBoxWidth,
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      equation = equation + "4";
                      txt.text = equation;
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      "4",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  _sizedBoxWidth,
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      equation = equation + "5";
                      txt.text = equation;
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      "5",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  _sizedBoxWidth,
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      equation = equation + "6";
                      txt.text = equation;
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      "6",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  _sizedBoxWidth,
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      equation = equation + "-";
                      txt.text = equation;
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      "-",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ),
                ],
              ),
              _sizedBoxHieght,
              //////////////////////////////////////////////////////////////////////////
              /////////////////////////////////////////////////////////////////////////////
              Row(
                children: [
                  _sizedBoxWidth,
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      equation = equation + "1";
                      txt.text = equation;
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  _sizedBoxWidth,
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      equation = equation + "2";
                      txt.text = equation;
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  _sizedBoxWidth,
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      equation = equation + "3";
                      txt.text = equation;
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      "3",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  _sizedBoxWidth,
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      equation = equation + "+";
                      txt.text = equation;
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      "+",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ),
                ],
              ),
              //////////////////////////////////////////////////////////////////////////
              /////////////////////////////////////////////////////////////////////////////
              _sizedBoxHieght,
              Row(
                children: [
                  _sizedBoxWidth,
                  FloatingActionButton(
                    onPressed: () {
                      equation = equation + "0";
                      txt.text = equation;
                    },
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      "0",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  _sizedBoxWidth,
                  FloatingActionButton(
                    onPressed: () {
                      equation = equation + ".";
                      txt.text = equation;
                    },
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      ".",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  _sizedBoxWidth,
                  FloatingActionButton(
                    onPressed: () {
                      equation = equation.substring(0, equation.length - 1);
                      txt.text = equation;
                      if (equation == "") {
                        equation = "0";
                      }
                    },
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      "⌫",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ),
                  _sizedBoxWidth,
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      expresion = equation;
                      try {
                        Parser p = Parser();
                        Expression exp = p.parse(expresion);

                        ContextModel cm = ContextModel();
                        result = '${exp.evaluate(EvaluationType.REAL, cm)}';
                        res.text = result;
                      } catch (e) {
                        result = "Error!!";
                        res.text = result;
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      "=",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ),
                ],
              ),

              //////////////////////////////////////////////////////////////////////////
              /////////////////////////////////////////////////////////////////////////////
            ],
          ),
        ),
      ),
    );
  }
}
