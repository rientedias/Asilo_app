import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:asilo_app/src/home_page.dart';

class MaterialPage extends StatelessWidget {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFCAB03),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          title: Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 3.0),
            child: Image.asset("images/logo.png"),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Container(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "DOAÇÃO DE MATERIAL",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Nome Completo',
                            labelStyle: TextStyle(
                                color: Colors.black38,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Seu Melhor E-mail',
                            labelStyle: TextStyle(
                                color: Colors.black38,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Telefone',
                            labelStyle: TextStyle(
                                color: Colors.black38,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Cidade',
                            labelStyle: TextStyle(
                                color: Colors.black38,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.black38),
                    underline: Container(
                      height: 2,
                      width: 500,
                      color: Colors.black38,
                    ),
                    onChanged: (String newValue) {
//                    setState(() {
//                      dropdownValue = newValue;
//                    });
                    },
                    items: <String>['One', 'Two', 'Free', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
          ),
        ),
      );

  }
}
