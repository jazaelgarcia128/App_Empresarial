import 'package:flutter/material.dart';

class DetailsOportunidades extends StatelessWidget {
  final int index;
  final String nombre;
  final String estatus;

  DetailsOportunidades(this.index,this.nombre,this.estatus);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _ListaDetalles(),
        ],
      )
    );
  }
  Widget _ListaDetalles(){
     final card = Container(
      // clipBehavior: Clip.antiAlias,
       child: Column(
         children: <Widget>[

           FadeInImage(
             image: NetworkImage('https://destinonegocio.com/wp-content/uploads/2015/08/ico-destinonegocio-como-establecer-el-precio-de-venta-istock-getty-images-800x4305.jpg'),
             placeholder: AssetImage('assets/gif/bols.gif'),
             fadeInDuration: Duration(milliseconds: 600),
             height: 300.0,
             fit: BoxFit.cover,
             ),
          /* Image(
             image: NetworkImage('https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg'),
           ),*/
           Container(
             padding: EdgeInsets.all(10.0) ,
             child: Text('Oportunidad Numero $index',
             style: TextStyle(fontSize:18.0, fontWeight: FontWeight.bold),
             
             ),
           ),
           Container(
             padding: EdgeInsets.all(10.0),
             height: 150,
             width:400,
             child: Card(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                     Text('Empresa: $nombre',
                     style: TextStyle(fontSize:18.0),
                     ),
                     Text('Etapa: $estatus',
                     style: TextStyle(fontSize: 18.0,),
                     ),
                      SizedBox(height: 20.0),
                     MaterialButton(
                      minWidth: 200.0,
                      height: 40.0,
                      onPressed: () {},
                      color: Colors.lightBlue,
                      child: Text('Contactar', style: TextStyle(color: Colors.white)),
                    ),
                 ],
               ),
             ),
           ),
         ],
         ),
     );
     return Container(
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10.0),
         color: Colors.white,
         boxShadow: <BoxShadow>[
           BoxShadow(color: Colors.black26,
           blurRadius: 10.0,
           spreadRadius: 2.0,
           offset: Offset(1.0, 5.0),
           )
         ]
        
         ),
         child: ClipRRect(
           borderRadius: BorderRadius.circular(30.0),
           child: card,
         ),
     );
   }
}