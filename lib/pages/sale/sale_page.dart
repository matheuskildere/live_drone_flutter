import 'package:flutter/material.dart';

class SalePage extends StatefulWidget {
  @override
  _SalePageState createState() => _SalePageState();
}

class _SalePageState extends State<SalePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left:20, right: 20,top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: ()=> Navigator.pop(context),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.arrow_back_ios, color: Colors.black,),
                      SizedBox(width: 5,),
                      Text("Back")
                    ],
                  )
                ),  
                CircleAvatar(
                  minRadius: 20,
                  backgroundImage: NetworkImage("https://www.shainblumphoto.com/wp-content/uploads/2015/11/sponser2.jpg"),
                ),
              ],
            ),
            Image.network(
              "https://lh3.googleusercontent.com/proxy/0raN9vfHSvcR6yE_O1PFFgi91-RRBv7r_Fp8CP-2wZ6eC6BWWb5ivNyG3C_DbyiWWpuNuKe_rrshvf4hhGpytTa9RnQozkAU0cTJcWreJ3SiCVTBUxU"
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "BEST VALUE",
                      style: TextStyle(color: Colors.orangeAccent[700], fontSize: 10),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      width: 95,
                      height: 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orangeAccent[700],
                      ),
                    )
                  ],
                ),
                Text(
                  "INSPIRE 2",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                        )
                      ),
                      child: card(
                        icon: Icons.videocam,
                        title: "Video Quality",
                        line1: "6K 30fps",
                        line2: "CinemaDNG"
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                        )
                      ),
                      child: card(
                        icon: Icons.attach_money,
                        title: "Max Speed",
                        line1: "58 mph",
                        line2: "Max Speed"
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                        )
                      ),
                      child: card(
                        icon: Icons.access_time,
                        title: "Flight Time",
                        line1: "Approx",
                        line2: "27 minutes"
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                        )
                      ),
                      child: card(
                        icon: Icons.all_inclusive,
                        title: "Connectivity",
                        line1: "Up To 7km",
                        line2: "Control Range"
                      ),
                    )
                  ],
                )
              ],
            ),
            //SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
              },
              child: Container(
                height: 50,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Color(0xff5A72F0),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "\$160 /2 DAYS",
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Text(
                        "RENT NOW >",
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget card({IconData icon,String title, String line1, String line2}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color: Color(0xff5A72F0),),
        SizedBox(width: 5,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(color: Colors.grey[300], fontWeight: FontWeight.w500),
            ),
            Text(
              line1,
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              line2,
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }

}
