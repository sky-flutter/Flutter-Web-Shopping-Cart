import 'package:ShoppingCart/utils/CustomTextStyle.dart';
import 'package:ShoppingCart/utils/MenuItem.dart';
import 'package:ShoppingCart/utils/ResponsiveLayout.dart';
import 'package:flutter_web/material.dart';

import '../about_us.dart';
import '../cart.dart';
import '../login.dart';

class Header extends StatelessWidget {
  double sliderHeight = 500;
  double sliderHeaderFontSize = 60;
  List<String> listImage = List();
  String _keyMenu;
  List<String> listBannerTitle = List();

  Header(BuildContext context, String keyMenu) {
    setUp(context);
    _keyMenu = keyMenu;
  }

  setUp(context) {
    if (ResponsiveLayout.isLargeScreen(context)) {
      sliderHeight = MediaQuery.of(context).size.height / 2;
      sliderHeaderFontSize = 60;
    } else if (ResponsiveLayout.isMediumScreen(context)) {
      sliderHeight = MediaQuery.of(context).size.height / 2;
      sliderHeaderFontSize = 30;
    } else {
      sliderHeight = MediaQuery.of(context).size.height / 2;
      sliderHeaderFontSize = 20;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 8, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Image(
                  image: AssetImage("ic_logo.png"),
                  height: 40,
                  width: 40,
                ),
                margin: EdgeInsets.only(left: 24),
              ),
            ],
          ),
        ),
        createMenu(context)
      ],
    );
  }

  createMenu(context) {
    if (ResponsiveLayout.isMediumScreen(context) ||
        ResponsiveLayout.isLargeScreen(context)) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            child: Text(
              "Home",
              style: CustomTextStyle.boldTextStyle.copyWith(
                color: Colors.black,
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          ),
          Container(
            child: Text(
              "Search",
              style: CustomTextStyle.boldTextStyle.copyWith(
                color: Colors.black,
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          ),
          GestureDetector(
            onTap: () {
              if (_keyMenu != MenuItem.MENU_CART) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Cart()));
              }
            },
            child: Container(
              child: Text(
                "Cart",
                style: CustomTextStyle.boldTextStyle.copyWith(
                  color: Colors.black,
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            ),
          ),
          Container(
            child: Text(
              "Profile",
              style: CustomTextStyle.boldTextStyle.copyWith(
                color: Colors.black,
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          ),
          GestureDetector(
            onTap: () {
              if (_keyMenu != MenuItem.MENU_ABOUT) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AboutUs()));
              }
            },
            child: Container(
              child: Text(
                "About Us",
                style: CustomTextStyle.boldTextStyle.copyWith(
                  color: Colors.black,
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            ),
          ),
          Container(
            child: Text(
              "Contact Us",
              style: CustomTextStyle.boldTextStyle.copyWith(
                color: Colors.black,
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Container(
              margin: EdgeInsets.only(right: 48),
              child: Text(
                "Login / SignUp",
                style: CustomTextStyle.boldTextStyle.copyWith(
                  color: Colors.black,
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            ),
          ),
        ],
      );
    } else {
      return Row(
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              })
        ],
      );
    }
  }
}
