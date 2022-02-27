import 'package:flutter/material.dart';

//https://adventuremexico.travel/wp-content/uploads/2015/10/ecoturismo-sijil-noh-ha-quintana-roo-7.jpg
//https://www.exceltoursxalapa.com/blog/wp-content/uploads/2018/11/xcaret.jpg
class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://www.exceltoursxalapa.com/blog/wp-content/uploads/2018/11/xcaret.jpg'),
        height: 210.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Río Subterráneo', style: estiloTitulo),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Río Subterráneo en México',
                    style: estiloSubtitulo,
                  ),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red.shade900, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.green.shade700,
          size: 35.0,
        ),
        SizedBox(height: 5.0),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.green),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Quis Lorem cillum ut ad esse laborum officia ullamco. Consequat velit est dolore id exercitation laborum laboris nostrud deserunt enim sint nostrud. Minim officia deserunt cillum aute. Occaecat qui sunt ullamco proident commodo aliqua magna excepteur. Et ex reprehenderit duis occaecat nostrud deserunt eiusmod esse. Sunt adipisicing consectetur et amet laborum.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
