import 'package:flutter/material.dart';

//https://adventuremexico.travel/wp-content/uploads/2015/10/ecoturismo-sijil-noh-ha-quintana-roo-7.jpg
//https://www.exceltoursxalapa.com/blog/wp-content/uploads/2018/11/xcaret.jpg
class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image(
            image: NetworkImage(
                'https://www.exceltoursxalapa.com/blog/wp-content/uploads/2018/11/xcaret.jpg'),
          ),
          Container(
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
                Icon(Icons.star, color: Colors.red, size: 30.0),
                Text('41', style: TextStyle(fontSize: 20.0))
              ],
            ),
          )
        ],
      ),
    );
  }
}
