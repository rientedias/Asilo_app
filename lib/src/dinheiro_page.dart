import 'package:flutter/material.dart';
import 'package:asilo_app/src/home_page.dart';
class DinheiroPage extends StatefulWidget {
  @override
  _DinheiroPageState createState() => _DinheiroPageState();
}

class _DinheiroPageState extends State<DinheiroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFCAB03),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white
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
            "TELA DE DOAÇÃO DE DINHEIRO",

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
