import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Color bgColor = Color(0xff282634);
  Color primaryColor = Color(0xff5c75f4);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomMenu(),
      body: Container(
        color: Color(0xff282634),
        child: Stack(
          children: [
            _bgCircle(),
            ListView(
              children: [
                _title(),
                // Cards
                _restaurantCard(),
                _restaurantCard(),
                _restaurantCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return Container(
      padding: EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Descubre\nRestaurantes',
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          IconButton(
              icon: Icon(Icons.search, color: Colors.white24, size: 28),
              onPressed: () {})
        ],
      ),
    );
  }

  Widget _bgCircle() {
    return Positioned(
      top: -85,
      left: -85,
      child: Container(
        width: 400,
        height: 400,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF736efb),
            gradient: LinearGradient(
                begin: FractionalOffset.topRight,
                end: FractionalOffset.bottomLeft,
                colors: [
                  Color(0xFF52d9de),
                  Color(0xFF7372f9),
                ],
                stops: [
                  0.0,
                  0.6
                ])),
      ),
    );
  }

  Widget _bottomMenu() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      width: double.maxFinite,
      height: 60,
      color: Color(0xff282634),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.directions, color: primaryColor),
          Icon(Icons.laptop_windows, color: Colors.white24),
          Icon(Icons.camera_alt, color: Colors.white24),
          Icon(Icons.alarm_sharp, color: Colors.white24),
          Icon(Icons.person, color: Colors.white24),
        ],
      ),
    );
  }

  Widget _restaurantCard() {
    return Container(
      padding: EdgeInsets.all(24),
      child: Container(
        height: 260,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://lechedetigre.net/wp-content/uploads/2019/08/Ceviche-de-Reineta-Peruano.jpg'),
            )),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  bgColor,
                  Colors.black45,
                  Colors.transparent,
                ],
                stops: [
                  0.15,
                  0.6,
                  1.0
                ]),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xff52505e)),
                child: Icon(
                  Icons.access_alarm_sharp,
                  color: Colors.white54,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cevicheria el cevichón',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Row(
                        children: [
                          Text('4.0 ', style: TextStyle(color: Colors.white)),
                          Icon(Icons.star, color: Colors.yellow[800]),
                          Icon(Icons.star, color: Colors.yellow[800]),
                          Icon(Icons.star, color: Colors.yellow[800]),
                          Icon(Icons.star, color: Colors.yellow[800]),
                          Icon(Icons.star, color: Colors.grey),
                          Text(' (100)', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Text('lorem ipsum', style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: primaryColor),
                child: Icon(
                  Icons.arrow_circle_down,
                  color: Colors.white54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
