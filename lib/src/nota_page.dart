import 'package:flutter/material.dart';
import 'package:asilo_app/src/home_page.dart';

class NotaPage extends StatefulWidget {
  @override
  _NotaPageState createState() => _NotaPageState();
}

class _NotaPageState extends State<NotaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFCAB03),
        leading: IconButton(
          icon:Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
          ),
          onPressed: (){
            Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context)=>
                      HomePage()
                )
            );
          },
        ),
      ),
      body: Container(
        child: Text(
            "TELA DE DOAÇÃO DE NOTA FISCAL",
          style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
