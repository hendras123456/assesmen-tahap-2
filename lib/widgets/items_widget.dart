import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    List<String> Food = ["Double Beef Burger", "Chicken Burger", "Ice Float", "Teh Botol","Kebab","Air Mineral","Hot Dog","Kentang Goreng"];
    List<String> Harga = ["RP.50.000.00", "RP.35.000.00", "RP.15.000.00", "RP.4.000.00", "RP.16.000.00","RP.3.000","RP.15.000.00","RP.11.000.00"];
    List<String> Slogan = ["Hot Beef Burger", "Hot Chicken Burger", "Soft Drink with Ice Cream", "Cold Ice Tea","Slice Beef With Vegetables","Cold and Fresh","Sausage With Bread","Fried Potatoes"];
    
   return GridView.count(
  crossAxisCount: 2,
  shrinkWrap: true,
  childAspectRatio: 0.76,
  children: [
    for (int i = 1; i < 9; i++) 
      Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 8,
            ),
          ],
        ),
        child: Column(
          children: [
          InkWell(
            onTap: () {
            },
            child: Container(
              margin: EdgeInsets.all(10),
              child: Image.asset("assets/image/$i.png",
              width: 120,
              height: 120,
              fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding:EdgeInsets.only(bottom: 8),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              Food[i-1],
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 253, 252, 253),
              ),
              ),
          ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              Slogan[i-1],
              style: TextStyle(
                fontSize: 12,
                color:Color(0xFF232227),
              ),
              ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Harga[i-1],
                ),
                Icon(Icons.control_point,
                size: 14.8,
                color: Colors.green,
                ),
            ],
            ),
          ),
      ],
        ),
      ),
     ],
     );
  }
}