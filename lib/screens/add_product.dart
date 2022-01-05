import 'package:app_motion/screens/constants.dart';
import 'package:flutter/material.dart';




class AddProduct extends StatelessWidget {
  const AddProduct(
  
  ) ;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding  
      ),

      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(30),
      ),
      
     child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 15,),
                    children: <TextSpan>[
                      TextSpan(text: 'Detalles del evento', style: TextStyle(color: Colors.blue, fontSize: 25,)),
                        
                    ]
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 15,),
                    children: <TextSpan>[
                         TextSpan(text: '\n'),
                      TextSpan(text: 'Fecha y Hora', style: TextStyle(color: Colors.black, fontSize: 20,)),
                    ]
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 15,),
                    children: <TextSpan>[
                      TextSpan(text: '12 marzo 2022', style: TextStyle(color: Colors.black54, fontSize: 15,)),
                        TextSpan(text: '\n'),
                         TextSpan(text: '4:00 pm', style: TextStyle(color: Colors.black54, fontSize: 15,)),
                           TextSpan(text: '\n'),
                    ]
                  ),
                ),
            
           
             RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 15,),
                    children: <TextSpan>[
                      TextSpan(text: 'Ubicación', style: TextStyle(color: Colors.black, fontSize: 20,)),
                    ]
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 15,),
                    children: <TextSpan>[
                      TextSpan(text: 'Evento Precencial', style: TextStyle(color: Colors.black54, fontSize: 15,)),
                         TextSpan(text: '\n'),
                    ]
                  ),
                ),
              
             RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 15,),
                    children: <TextSpan>[
                      TextSpan(text: 'Estado', style: TextStyle(color: Colors.black, fontSize: 20,)),
                    ]
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 15,),
                    children: <TextSpan>[
                      TextSpan(text: 'Guerrero', style: TextStyle(color: Colors.black54, fontSize: 15,)),
                         TextSpan(text: '\n'),
                    ]
                  ),
                ),
              
             RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 15,),
                    children: <TextSpan>[
                      TextSpan(text: 'Municipio', style: TextStyle(color: Colors.black, fontSize: 20,)),
                    ]
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 15,),
                    children: <TextSpan>[
                      TextSpan(text: 'Acapulco', style: TextStyle(color: Colors.black54, fontSize: 15,)),
                       
                    ]
                  ),
                ),
                 RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 15,),
                    children: <TextSpan>[
                       TextSpan(text: '\n'),
                      TextSpan(text: 'Temario', style: TextStyle(color: Colors.blue, fontSize: 25,)),
                         TextSpan(text: '\n'),
                    ]
                  ),
                ),
                
             RaisedButton(
              color: Colors.indigo,
              
              textColor: Colors.white, // foreground
              child: Text(
                'Descargar',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              onPressed: () {
                
              },
            ),
         
                 RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 15,),
                    children: <TextSpan>[
                       TextSpan(text: '\n'),
                      TextSpan(text: 'Comentarios', style: TextStyle(color: Colors.blue, fontSize: 25,)),
                         TextSpan(text: '\n'),
                    ]
                  ),
                ),
              TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Icon(Icons.person,
                        size: 40.0, color: Colors.grey),
                  ),
                  hintText: "Escribe tu comentario",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(new Radius.circular(25.0))),
                  labelStyle: TextStyle(color: Colors.black87)),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
             const SizedBox(height: 10),
             Divider(
              height: 8.0,
             color: Colors.lightBlue,
              indent: 16.0,
              endIndent: 16.0,
            ),
             RaisedButton(
              color: Colors.orange,
              textColor: Colors.white, // foreground
              child: Text(
                'Registrarme al evento',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
             onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Image.asset(
                          'assets/img/persona.png',
                          height: 130,
                          width: 50,
                        ),
                       TextFormField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Nombre Completo'
                          ),
                        ),
                         TextFormField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Correo Electronico'
                          ),
                        ),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        color: Colors.indigo,
                        textColor: Colors.white,
                      
                        child: Text(
                          'Registrarme',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Image.asset(
                          'assets/img/aceptado.png',
                          height: 130,
                          width: 50,
                        ),
                        Text(
                          'Registro exitoso',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        Text(
                          'Espere la confirmación en su correo electronico',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        color: Colors.indigo,
                        textColor: Colors.white,
                        padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                        child: Text(
                          'OK',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('home');
                        },
                      ),
                    ),
                  ],
                ),
              ),
                      ),
                    ),
                  ],
                ),
              ),
            ),   
              ]
            ),
          ),
     ),
    ); 
  }
}