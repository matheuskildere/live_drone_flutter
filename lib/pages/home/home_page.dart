import 'package:flutter/material.dart';
import 'package:live_drone/pages/sale/sale_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 50),
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("https://images.unsplash.com/photo-1521405924368-64c5b84bec60?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjEyMDd9"),
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
              ),
              child: Icon(Icons.donut_large),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "RENT DRONE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "EFFORTLESSLY",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 50,
                    fontWeight: FontWeight.w900
                  ),
                ),
                SizedBox(height: 40,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SalePage();
                    },));
                  },
                  child: Container(
                    height: 50,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Color(0xff5A72F0),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 15),)
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
