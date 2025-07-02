import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import your home screen file

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(Icons.shopping_cart_outlined,),
              onPressed: () {},
            ),
          ),
        ],
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const HomeScreen()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: 339,
                  height: 235,
                child: Center(child: Image.asset("assets/img/shoes3.png")),
              ),
              Row(
                children: [
                  Text("Size: 7UK",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                  ),)
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Image.asset("assets/img/size.png",width: 288,
                      height: 32,
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text("Nike Sneaker",style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                  ),)
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text("Vision Alta Men’s Shoes Size (All Colours)",style:  TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  ),),
                ],
              ),
              Row(
                children: [Image.asset("assets/img/description.png",width: 343,
                    height: 198,
                )],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Image.asset("assets/img/cartlogo.png",width: 136,
                      height: 40,
                  ),
                  SizedBox(width: 20,),
                  Image.asset("assets/img/buy_logo.png",width: 136,
                    height: 40,),
                ],
              ),
              SizedBox(height: 10),
              Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    color: Color(0xffFFCCD5)
                  ),
                child: Center(child: Text("Delivery with in 1 Hour",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Image.asset("assets/img/design.png",width: 340,
                      height: 48,
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [Text("Similar to",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),)],
              ),

              Row(
                children: [
                  Image.asset("assets/img/item.png",width: 340,height: 60,)
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 164,
                    height: 245,
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
                          child: Image.asset("assets/img/nike1.png",width: 164,
                            height: 136,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nike Air Max", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
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
                    height: 245,
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
                          child: Image.asset("assets/img/nike2.png",width: 164,
                            height: 136,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nike Air Jordan", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
