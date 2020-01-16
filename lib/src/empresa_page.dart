import 'package:flutter/material.dart';
import 'package:asilo_app/src/home_page.dart';

class EmpresaPage extends StatefulWidget {
  @override
  _EmpresaPageState createState() => _EmpresaPageState();
}

class _EmpresaPageState extends State<EmpresaPage> {
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
        alignment: AlignmentDirectional.center,
        child: Text(
          "EMPRESA ILUMINADA",
          style: TextStyle(
              color: Colors.black,
            fontSize: 18.0,
            fontWeight:  FontWeight.bold
          ),
        ),
      ),
    );
  }
}
