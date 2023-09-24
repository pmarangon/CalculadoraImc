import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ,
  ));
}

class Home extends StatelessWidget {
  Widget buildTextField( String label, TextEditingController c){
    return TextField(
            decoration: InputDecoration(
              labelText: label, labelStyle: TextStyle(color: Colors.green, fontSize: 20.0),
              border: OutlineInputBorder()
             ),
             style: TextStyle(color: Colors.green, fontSize: 25.0),
             keyboardType: TextInputType.number,
             controller: c,
          );

          void _resetField(){
            setState((){
weightController.text ="";
            heightController.text = "";
            infoTexto =" ";
            })
            
          }
       void _calculate(){
        double weight= double.parse(weightController.text);
        double height= double.parse(heightController.text);
        double imc= weight/(height*height);
        setState((){
          if(imc<17){
          infoTexto = "Muito abaixo do peso"($(imc.toStringAsPrecision(4)))
        } else if(imc>=17 && imc<=18.49){
  infoTexto = "Abaixo do peso"($(imc.toStringAsPrecision(4)));
}else if(imc>=18.5 && imc<=24.99){
  infoTexto = "Peso ideal ou normal"($(imc.toStringAsPrecision(4)));
} else if(imc>=25 && imc<=29.99){
  infoTexto = "Acima do peso"($(imc.toStringAsPrecision(4)));
} else if(imc>=30 && imc<=34.99){
  infoTexto = "Obesidade I"($(imc.toStringAsPrecision(4)));
} else if(imc>=35 && imc<=39.99){
  infoTexto = "Obesidade II(severa)"($(imc.toStringAsPrecision(4)));
}else if (imc>40){
  infoTexto = "Obesidade III (morbida)"($(imc.toStringAsPrecision(4)));
}


  });

        }
        
        
       
  @override
  _HomeState createState()=> _HomeState();
}
 class _HomeState extends <Home>{
  String infoText="Informe seus dados";
  TextEditingController weightcontroler= TextEditingController();
  TextEditingController heightcontroler= TextEditingController();
  @override
  Widget build (BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        bottom: Colors.green,
        title: Text: ("Calculadora  de IMC"),
        centerTitle: true,
        actions: <widget>[
          IconButton(icon: Icon(Icons.refresh),
          onpressed:()(_resetField;), )
        ],

      );
      body:SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
      )
       Column(
        crossAxisAlignment: CrossAxisAlignment.stretch ,
        children: <Widget> [
          Icon(Icons.person_2_outlined,size: 170.0,color: Colors.green,),
          buildTextField("Peso", weightcontroler),
          Divider(),
          buildTextField("Altura", heightcontroler),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              height: 5.0,
              child: RaisedButton(
                child: Text("Verificar", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                onPressed: (){
                  _calculate();
                },
                color: Colors.green,
              ),),)
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child:  Text (infoTexto), style: TextStyle(color:  Colors.green, fontSize: 25.0), 
            textalign: TextAlign.center
        ],)
    );
  }
 }
}


  }

