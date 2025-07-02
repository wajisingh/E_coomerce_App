import 'package:flutter/material.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/img/logo2.png", width: 50, height: 50),

                Image.asset("assets/img/logo.png", width: 112, height: 32),

                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/img/profile.png'),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon:Icon(Icons.search) ,
                    suffixIcon: Icon(Icons.mic),
                    labelText: "Search any Product",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("All Featured",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                  ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/img/beauty.png'),
                          ),
                          SizedBox(height: 4),
                          Text('Beauty'),
                        ],
                      ),
                      SizedBox(width: 12),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/img/fashion.png'),
                          ),
                          SizedBox(height: 4),
                          Text('Fashion'),
                        ],
                      ),
                      SizedBox(width: 12),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/img/kids.png'),
                          ),
                          SizedBox(height: 4),
                          Text('Kids'),
                        ],
                      ),
                      SizedBox(width: 12),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/img/women.png'),
                          ),
                          SizedBox(height: 4),
                          Text('Womens'),
                        ],
                      ),
                      SizedBox(width: 12),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/img/men.png'),
                          ),
                          SizedBox(height: 4),
                          Text('Mens'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              width: 343,
              height: 220,
              child: Image.asset("assets/img/discount.png"),
            ),
            SizedBox(height: 10,),
            Container(
              width: 343,
              height: 60,
              child: Image.asset("assets/img/discount1.png"),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 164,
                    height: 305,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                          child: Image.asset("assets/img/men_shirt.png",width: 164,
                            height: 196,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Men Printed Shirt", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                              SizedBox(height: 2),
                              Text("Neque porro quisquam est qui dolorem ipsum quia", style: TextStyle(fontSize: 10, color: Colors.grey)),
                              SizedBox(height:5),
                              Row(
                                children: const [
                                  Text("₹1500", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12)),
                                  SizedBox(width: 8),
                                ],
                              ),
                              const SizedBox(height:1),
                              Row(
                                children: const [
                                  Icon(Icons.star, color: Colors.amber, size: 12),
                                  Icon(Icons.star, color: Colors.amber, size: 12),
                                  Icon(Icons.star, color: Colors.amber, size: 12),
                                  Icon(Icons.star_half, color: Colors.amber, size: 12),
                                  Icon(Icons.star_border, color: Colors.amber, size: 12),
                                  SizedBox(width: 4),
                                  Text("56890", style: TextStyle(color: Colors.grey,fontSize: 10)),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 164,
                    height: 305,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                          child: Image.asset("assets/img/men_shirt.png",width: 164,
                            height: 196,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Men Printed Shirt", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                              SizedBox(height: 2),
                              Text("Neque porro quisquam est qui dolorem ipsum quia", style: TextStyle(fontSize: 10, color: Colors.grey)),
                              SizedBox(height:5),
                              Row(
                                children: const [
                                  Text("₹1500", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12)),
                                  SizedBox(width: 8),
                                ],
                              ),
                              const SizedBox(height:1),
                              Row(
                                children: const [
                                  Icon(Icons.star, color: Colors.amber, size: 12),
                                  Icon(Icons.star, color: Colors.amber, size: 12),
                                  Icon(Icons.star, color: Colors.amber, size: 12),
                                  Icon(Icons.star_half, color: Colors.amber, size: 12),
                                  Icon(Icons.star_border, color: Colors.amber, size: 12),
                                  SizedBox(width: 4),
                                  Text("56890", style: TextStyle(color: Colors.grey,fontSize: 10)),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 343,
              height: 84,
              child: Image.asset("assets/img/offer.png"),
            ),
            SizedBox(height: 10,),
            Container(
              width: 343,
              height: 172,
              child: Image.asset("assets/img/heels.png"),
            ),
            SizedBox(height: 20,),
            Container(
              width: 343,
              height: 60,
              child: Image.asset("assets/img/discount2.png"),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 142,
                        height: 186,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,

                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                              ),
                              child: Image.asset("assets/img/watch.png",width: 142,
                                height: 100,

                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("IWC Schaffhausen 2021 Pilot's Watch SIHH 2 44mm", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12)),
                                  Row(
                                    children:[ Text("₹1500", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10)),
                                      SizedBox(width: 8),
                                      Text("₹2499", style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey,fontSize: 10)),
                                      SizedBox(width: 8),
                                      Text("40%Off", style: TextStyle(color: Colors.orange,fontSize: 10)),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 142,
                        height: 186,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,

                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                              ),
                              child: Image.asset("assets/img/watch.png",width: 142,
                                height: 100,

                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("IWC Schaffhausen 2021 Pilot's Watch SIHH 2 44mm", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12)),
                                  Row(
                                    children:[ Text("₹1500", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10)),
                                      SizedBox(width: 8),
                                      Text("₹2499", style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey,fontSize: 10)),
                                      SizedBox(width: 8),
                                      Text("40%Off", style: TextStyle(color: Colors.orange,fontSize: 10)),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 142,
                        height: 186,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,

                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                              ),
                              child: Image.asset("assets/img/watch.png",width: 142,
                                height: 100,

                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("IWC Schaffhausen 2021 Pilot's Watch SIHH 2 44mm", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12)),
                                  Row(
                                    children:[ Text("₹1500", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10)),
                                      SizedBox(width: 8),
                                      Text("₹2499", style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey,fontSize: 10)),
                                      SizedBox(width: 8),
                                      Text("40%Off", style: TextStyle(color: Colors.orange,fontSize: 10)),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width:10),
                      Container(
                        width: 142,
                        height: 186,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,

                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                              ),
                              child: Image.asset("assets/img/watch.png",width: 142,
                                height: 100,

                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("IWC Schaffhausen 2021 Pilot's Watch SIHH 2 44mm", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12)),
                                  Row(
                                    children:[ Text("₹1500", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10)),
                                      SizedBox(width: 8),
                                      Text("₹2499", style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey,fontSize: 10)),
                                      SizedBox(width: 8),
                                      Text("40%Off", style: TextStyle(color: Colors.orange,fontSize: 10)),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 343,
              height: 270,
              child: Image.asset("assets/img/arival.png"),
            ),
            SizedBox(height: 10,),
            Container(
              width: 337,
              height: 374,
              child: Image.asset("assets/img/sponsored.png"),
            ),
          ],
        ),
      ),
    );
  }
}
