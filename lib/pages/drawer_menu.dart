import 'package:ShoppingCart/utils/CustomColors.dart';
import 'package:ShoppingCart/utils/CustomTextStyle.dart';
import 'package:ShoppingCart/utils/MenuItem.dart';
import 'package:flutter_web/material.dart';

import '../about_us.dart';
import '../cart.dart';
import '../contact_us.dart';
import '../home.dart';
import '../login.dart';
import '../profile.dart';
import '../search.dart';

class DrawerMenu extends StatelessWidget {
  String _keyMenu;
  DrawerMenu(String menu_home) {
    _keyMenu = menu_home;
  }

  @override
  Widget build(BuildContext context) {
    return createDrawer(context);
  }

  createDrawer(context) {
    return Drawer(
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
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Grocery Fact",
                  style: CustomTextStyle.boldTextStyle
                      .copyWith(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          InkWell(
            onTap: () {
              if (_keyMenu != MenuItem.MENU_HOME) {
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home()));
              }
            },
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
            onTap: () {
              if (_keyMenu != MenuItem.MENU_SEARCH) {
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Search()));
              }
            },
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
            onTap: () {
              if (_keyMenu != MenuItem.MENU_CART) {
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Cart()));
              }
            },
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
          ),
          InkWell(
            onTap: (){
              if (_keyMenu != MenuItem.MENU_PROFILE) {
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Profile()));
              }
            },
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
            onTap: () {
              if (_keyMenu != MenuItem.MENU_ABOUT) {
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AboutUs()));
              }
            },
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
            onTap: () {
              if (_keyMenu != MenuItem.MENU_CONTACT_US) {
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ContactUs()));
              }
            },
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
            onTap: () {
              if (_keyMenu != MenuItem.MENU_LOGIN_SIGNUP) {
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Login()));
              }
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
