import 'dart:ui';

import 'package:flutter/material.dart';

class Newupdate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildItem(
              'Naruto.jpeg',
              'Naruto',
            ),
            SizedBox(width: 25),
            _buildItem('DeathNote.jpeg', 'Death Note'),
            SizedBox(width: 25),
            _buildItem('bleach.jpeg', 'Bleach'),
            SizedBox(width: 25),
            _buildItem('onepiece.jpeg', 'One Piece'),
            SizedBox(
              width: 25,
            ),
            _buildItem('kaijuno8.jpg', 'Kaiju No 8'),
            SizedBox(
              width: 25,
            ),
            _buildItem('tsubasa.jpeg', 'Tsubasa'),
            SizedBox(
              width: 25,
            ),
            _buildItem('aoashi.jpg', 'Ao Ashi')
          ],
        ),
      ),
    );
  }

  Widget _buildItem(String imagePath, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 200,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 5,
                left: 5,
                child: Container(
                  child: Text(
                    'Eps 77',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: 60,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(10))),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.star_half_rounded,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '7.89',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: 50,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'New',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 3),
        Container(
          width: 200,
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
