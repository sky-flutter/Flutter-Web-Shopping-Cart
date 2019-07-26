import 'package:ShoppingCart/utils/CustomColors.dart';
import 'package:ShoppingCart/utils/CustomTextStyle.dart';
import 'package:flutter_web/material.dart';

class MobileHomePage extends StatelessWidget {
  GlobalKey<ScaffoldState> _keyScaffoldState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _keyScaffoldState,
        appBar: AppBar(
          elevation: 0,
          leading: Container(
            height: 20,
            width: 20,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("ic_logo.png"),
            )),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  _keyScaffoldState.currentState.openEndDrawer();
                })
          ],
          backgroundColor: CustomColors.THEME_COLOR,
        ),
        endDrawer: Drawer(
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
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Text(
                    "About",
                    style: CustomTextStyle.boldTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Text(
                    "Login / SignUp",
                    style: CustomTextStyle.boldTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 200),
                  child: PageView.builder(
                    itemBuilder: (context, position) {
                      return createSlider();
                    },
                    itemCount: 4,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  createSlider() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      child: Image(
        image: AssetImage("banner1.jpg"),
        fit: BoxFit.cover,
      ),
    );
  }
}
