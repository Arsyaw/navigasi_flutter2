import 'package:flutter/material.dart';
import 'package:navigasi_flutter2/widget/bottom_nav.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 24, 24, 24),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage('ambaruwo.jpg'),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Arsya Wildan',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Wibu Biasa',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      width: 165,
                    ),
                    Center(
                      child: Container(
                        width: 175,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Center(
                            child: Text(
                          'Lvl 45',
                          style: TextStyle(fontSize: 20),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Center(
                      child: Container(
                        width: 175,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Center(
                            child: Text(
                          '#9822902',
                          style: TextStyle(fontSize: 20),
                        )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(1),
    );
  }
}
