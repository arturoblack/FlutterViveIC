import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            circle(),
            Column(
              children: [
                header(),
                card(),
              ],
            ),
            // Text('Adios'),
          ],
        ));
  }

  Widget circle() {
    return Positioned(
      left: -50,
      top: -50,
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
        ),
        // child: Text('Texto'),
      ),
    );
  }

  Widget header() {
    return Container(
      padding: EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Discover Restaurant'),
          Icon(Icons.search),
        ],
      ),
    );
  }

  Widget card() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          padding: EdgeInsets.all(24),
          // color: Colors.blue,
          child: Container(
            width: double.maxFinite,
            height: 240,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://cdn.cuponidad.pe/images/Deals/Comixs-Polloalabrasa2.jpg'))),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Color(0xff1f1d2b),
                      Colors.black54,
                      Colors.transparent,
                    ],
                    stops: [
                      0.0,
                      0.6,
                      1.0
                    ]),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                    child: Icon(Icons.access_time, color: Colors.white),
                  ),
                  Column(
                    children: [
                      Text(
                        'Pollerias el pollito',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text('4.0 '),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star_border_outlined),
                          Text(' (100)')
                        ],
                      ),
                      Text('En pollerias el pollito comeras el mejor pollo'),
                    ],
                  ),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.indigo,
                    ),
                    child: Icon(Icons.access_time, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.black,
            child: Text(
              'asdasds',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
