import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        // theme: ThemeData(
        //   primarySwatch: Colors.yellow, //'#FEC300',
        // ),

        home: Scaffold(
            appBar: AppBar(
                title: Text("Sign in",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    )),
                backgroundColor: Color(0xFFFEC300),
                elevation: 0.0,
                actions: <Widget>[
                  FlatButton(
                    textColor: Colors.white,
                    onPressed: () {
                      print("clicked on next");
                    },
                    child: Text("Next",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18)),
                    shape: CircleBorder(
                        side: BorderSide(color: Colors.transparent)),
                  )
                ]),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 30),
                    child: Center(
                        child: Text('Your Phone',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 22))),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: Color(0xFFCBC3AA), width: 0.5),
                              bottom: BorderSide(
                                  color: Color(0xFFCBC3AA), width: 0.5))),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('India',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20)),
                                IconButton(
                                  icon: Icon(Icons.keyboard_arrow_right,
                                      size: 34),
                                  onPressed: null,
                                )
                              ]))),
                  Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xFFCBC3AA), width: 0.5))
                                  ),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                        right: BorderSide(
                                        color: Color(0xFFCBC3AA), width: 0.5)
                                        )
                                        ),
                                    child: Text('+91',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20)
                                        )
                                ),
                                Expanded(
                                child:
                                Container(
                                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                                 child : TextField(
                                   
                                   maxLength: 10,
                                    keyboardType: TextInputType.number, 
                                    decoration: InputDecoration.collapsed(
                                        hintText: 'Your Phone Number',
                                        
                                    ),
                                    buildCounter: (BuildContext context, { int currentLength, int maxLength, bool isFocused }) => null,
                                    style: new TextStyle(
                                    fontWeight: FontWeight.w500,
                                        fontSize: 20
                                      )
                                    ),
                                )
                                )
                              ]
                              )
                              )
                              )
                ])));
  }
}
