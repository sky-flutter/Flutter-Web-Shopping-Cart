import 'package:ShoppingCart/pages/drawer_menu.dart';
import 'package:ShoppingCart/pages/footer.dart';
import 'package:ShoppingCart/pages/header.dart';
import 'package:ShoppingCart/utils/CustomTextStyle.dart';
import 'package:ShoppingCart/utils/MenuItem.dart';
import 'package:ShoppingCart/utils/ResponsiveLayout.dart';
import 'package:flutter_web/material.dart';

class Profile extends StatelessWidget {
  GlobalKey<ScaffoldState> keyScaffold = GlobalKey();
  double sliderHeight = 500;
  double sliderHeaderFontSize = 60;
  double childAspectRatio = 1.2;
  double textBoxWidth = 500;

  @override
  Widget build(BuildContext context) {
    setUp(context);
    return createScaffold(context);
  }

  createScaffold(context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: keyScaffold,
      endDrawer: DrawerMenu(MenuItem.MENU_ABOUT),
      body: Builder(builder: (context) {
        return ListView(
          children: <Widget>[
            Header(context, MenuItem.MENU_ABOUT),
            slider(),
            profileSection(context),
            Footer()
          ],
        );
      }),
    );
  }

  profileSection(context) {
    if (ResponsiveLayout.isLargeScreen(context)) {
      return Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(),
              flex: 20,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[createImage(), createForm(context)],
              ),
              flex: 60,
            ),
            Expanded(
              child: Container(),
              flex: 20,
            ),
          ],
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[createImage(), createForm(context)],
        ),
      );
    }
  }

  createImage() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200,
            margin: EdgeInsets.only(left: 8, top: 24, right: 24),
            width: 200,
            child: Icon(
              Icons.person,
              size: 72,
            ),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300, width: 1)),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: Text(
              "+ UPLOAD IMAGE",
              style: CustomTextStyle.boldTextStyle.copyWith(color: Colors.red),
            ),
          )
        ],
      ),
    );
  }

  createForm(context) {
    return Container(
      width: textBoxWidth,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 24,
          ),
          TextFormField(
            decoration: InputDecoration(
              border: border,
              hintText: "First Name",
              labelStyle: CustomTextStyle.regularTextStyle
                  .copyWith(color: Colors.black, fontSize: 20),
              hintStyle:
                  CustomTextStyle.regularTextStyle.copyWith(color: Colors.grey),
              enabledBorder: border,
              focusedBorder: border,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          TextFormField(
            decoration: InputDecoration(
              border: border,
              hintText: "Last Name",
              labelStyle: CustomTextStyle.regularTextStyle
                  .copyWith(color: Colors.black, fontSize: 20),
              hintStyle:
                  CustomTextStyle.regularTextStyle.copyWith(color: Colors.grey),
              enabledBorder: border,
              focusedBorder: border,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: border,
              hintText: "Email Address",
              labelStyle: CustomTextStyle.regularTextStyle
                  .copyWith(color: Colors.black, fontSize: 20),
              hintStyle:
                  CustomTextStyle.regularTextStyle.copyWith(color: Colors.grey),
              enabledBorder: border,
              focusedBorder: border,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              border: border,
              hintText: "Mobile Number",
              labelStyle: CustomTextStyle.regularTextStyle
                  .copyWith(color: Colors.black, fontSize: 20),
              hintStyle:
                  CustomTextStyle.regularTextStyle.copyWith(color: Colors.grey),
              enabledBorder: border,
              focusedBorder: border,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              border: border,
              hintText: "Old Password",
              labelStyle: CustomTextStyle.regularTextStyle
                  .copyWith(color: Colors.black, fontSize: 20),
              hintStyle:
                  CustomTextStyle.regularTextStyle.copyWith(color: Colors.grey),
              enabledBorder: border,
              focusedBorder: border,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              border: border,
              hintText: "New Password",
              labelStyle: CustomTextStyle.regularTextStyle
                  .copyWith(color: Colors.black, fontSize: 20),
              hintStyle:
                  CustomTextStyle.regularTextStyle.copyWith(color: Colors.grey),
              enabledBorder: border,
              focusedBorder: border,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              border: border,
              hasFloatingPlaceholder: true,
              hintText: "Confirm Password",
              labelStyle: CustomTextStyle.regularTextStyle
                  .copyWith(color: Colors.black, fontSize: 20),
              hintStyle:
                  CustomTextStyle.regularTextStyle.copyWith(color: Colors.grey),
              enabledBorder: border,
              focusedBorder: border,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Align(
            alignment: Alignment.center,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2))),
              child: Text(
                "Save",
                style: CustomTextStyle.regularTextStyle
                    .copyWith(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }

  var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(0),
      borderSide: BorderSide(color: Colors.grey.shade300, width: 1));

  setUp(context) {
    if (ResponsiveLayout.isLargeScreen(context)) {
      sliderHeight = MediaQuery.of(context).size.height / 2;
      sliderHeaderFontSize = 60;
      childAspectRatio = 1.2;
      textBoxWidth = 500;
    } else if (ResponsiveLayout.isMediumScreen(context)) {
      sliderHeight = MediaQuery.of(context).size.height / 2;
      sliderHeaderFontSize = 30;
      childAspectRatio = 1.25;
      textBoxWidth = 400;
    } else {
      sliderHeight = MediaQuery.of(context).size.height / 3;
      sliderHeaderFontSize = 20;
      childAspectRatio = 1.2;
      textBoxWidth = 300;
    }
  }

  slider() {
    return Container(
        width: double.infinity,
        height: sliderHeight,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Image(
                image: AssetImage("profile_slider.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Text(
                    "profile",
                    textAlign: TextAlign.center,
                    style: CustomTextStyle.boldTextStyle.copyWith(
                        fontSize: sliderHeaderFontSize, color: Colors.blueGrey),
                  )),
            )
          ],
        ));
  }
}
