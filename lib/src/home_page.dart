import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFCAB03),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 3.0),
            child: Image.asset(
              "images/logo.png",
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: 450.0,
                height: 750.0,
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF4F4F4),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.0),
                                topRight: Radius.circular(50.0))),
                      ),
                    ),
                    ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Container(
                            child: FittedBox(
                              child: Material(
                                color: Colors.white,
                                elevation: 14.0,
                                borderRadius: BorderRadius.circular(24.0),
                                shadowColor: Color(0x802196F3),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: ClipRRect(
                                        borderRadius:
                                        new BorderRadius.circular(24.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child:  Image.asset("images/material.png"),
                                        )
                                      ),
                                    ),
                                    Container(

                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child:  Text(
                                          "DOAÇÃO DE MATERIAL",
                                          style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),

                                      )

                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      child: IconButton(
                                        icon: Icon(Icons.arrow_forward_ios, color: Color(0xFF000000)),
                                        onPressed: (){},
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
