import 'package:ShoppingCart/utils/CustomColors.dart';
import 'package:ShoppingCart/utils/CustomTextStyle.dart';
import 'package:flutter_web/material.dart';

import '../login.dart';

class DrawerMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return createDrawer(context);
  }
  createDrawer(context){
    return  Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 24, 0, 24),
            color: CustomColors.THEME_COLOR,
            child: Column(
              children: <Widget>[
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: CustomColors.THEME_COLOR,
                      image: DecorationImage(image: AssetImage("ic_logo.png"))),
                ),
                SizedBox(height: 16,),
                Text("Grocery Fact",style: CustomTextStyle.boldTextStyle.copyWith(color: Colors.white,fontSize: 20),)
              ],
            ),
          ),
          SizedBox(height: 16,),
          InkWell(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Text(
                "Home",
                style: CustomTextStyle.boldTextStyle,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Text(
                "Search",
                style: CustomTextStyle.boldTextStyle,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Text(
                "Cart",
                style: CustomTextStyle.boldTextStyle,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),InkWell(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Text(
                "Profile",
                style: CustomTextStyle.boldTextStyle,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Text(
                "About Us",
                style: CustomTextStyle.boldTextStyle,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Text(
                "Contact Us",
                style: CustomTextStyle.boldTextStyle,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Text(
                "Login / SignUp",
                style: CustomTextStyle.boldTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }

}