import 'package:flutter_web/widgets/bottom_bar_column.dart';
import 'package:flutter_web/widgets/info_text.dart';
import 'package:flutter_web/widgets/responsive.dart';
import 'package:flutter/material.dart';
//thanh footter
class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);
  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff0575E6);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(0.0)),
          gradient: LinearGradient(
              colors: [
                gradientStartColor,
                gradientEndColor
              ],
              begin: const FractionalOffset(0.2, 0.2),
              end: const FractionalOffset(1.0, 1.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
      padding: EdgeInsets.all(30),
      //color: Colors.blueGrey[900],
      child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomBarColumn(
                      heading: 'ABOUT',
                      s1: 'Contact Us',
                      s2: 'About Us',
                      s3: 'Careers',
                    ),
                    Container(
                      color: Colors.white,
                      width: 2,
                      height: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoText(
                          type: 'Email',
                          text: 'tinhhn0511@gmail.com',
                        ),
                        SizedBox(height: 5),
                        InfoText(
                          type: 'Address',
                          text: 'HO CHI MINH CITY',
                        )
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                SizedBox(height: 20),
                Text(
                  'Designed by gr PRIVATE @2021',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}
