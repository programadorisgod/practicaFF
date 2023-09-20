import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.cyanAccent[200],
              backgroundImage: NetworkImage(
                'https://telemedellin.tv/wp-content/uploads/2023/06/Julio-Iglesias.jpg',
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/loading-5.gif'),
          image: NetworkImage(
            'https://elcomercio.pe/resizer/-ff-6d9vg7CILcQh-WvejY7_3lQ=/1200x1200/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/6FUBT6XQXNHHNFOMCHIT7I34NA.jpg',
          ),
          fadeInDuration: Duration(seconds: 1),
        ),
      ),
    );
  }
}
