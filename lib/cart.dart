import 'package:ShoppingCart/pages/drawer_menu.dart';
import 'package:ShoppingCart/pages/footer.dart';
import 'package:ShoppingCart/pages/header.dart';
import 'package:ShoppingCart/utils/CustomTextStyle.dart';
import 'package:ShoppingCart/utils/MenuItem.dart';
import 'package:ShoppingCart/utils/ResponsiveLayout.dart';
import 'package:flutter_web/material.dart';

class Cart extends StatelessWidget {
  GlobalKey<ScaffoldState> keyScaffold = GlobalKey();
  double sliderHeight = 500;
  double sliderHeaderFontSize = 60;
  double childAspectRatio = 1.2;

  @override
  Widget build(BuildContext context) {
    setUp(context);
    return createScaffold(context);
  }

  createScaffold(context) {
    return Scaffold(
      key: keyScaffold,
      endDrawer: DrawerMenu(MenuItem.MENU_CART),
      body: Builder(builder: (context) {
        return ListView(
          children: <Widget>[
            Header(context, MenuItem.MENU_CART),
            slider(),
            createCartSection(context),
            ResponsiveLayout.isLargeScreen(context)
                ? Container()
                : createCheckOut(),
            Footer()
          ],
        );
      }),
    );
  }

  getGridCount(context) {
    if (ResponsiveLayout.isSmallScreen(context)) {
      return 1;
    } else if (ResponsiveLayout.isMediumScreen(context)) {
      return 2;
    } else {
      return 3;
    }
  }

  setUp(context) {
    if (ResponsiveLayout.isLargeScreen(context)) {
      sliderHeight = 500;
      sliderHeaderFontSize = 60;
      childAspectRatio = 1.2;
    } else if (ResponsiveLayout.isMediumScreen(context)) {
      sliderHeight = 400;
      sliderHeaderFontSize = 30;
      childAspectRatio = 1.2;
    } else {
      sliderHeight = 160;
      sliderHeaderFontSize = 20;
      childAspectRatio = 1.2;
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
                image: AssetImage("cart_slider.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Text(
                    "cart",
                    textAlign: TextAlign.center,
                    style: CustomTextStyle.boldTextStyle.copyWith(
                        fontSize: sliderHeaderFontSize, color: Colors.white),
                  )),
            )
          ],
        ));
  }

  createCartSection(context) {
    return Container(
      margin: EdgeInsets.only(top: 24, bottom: 24),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(),
            flex: 10,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      "shopping cart",
                      style:
                          CustomTextStyle.boldTextStyle.copyWith(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  ListView.builder(
                    itemBuilder: (context, position) {
                      return createListItem(context);
                    },
                    itemCount: 3,
                    primary: false,
                    shrinkWrap: true,
                  ),
                  createApplyCoupon(context),
                  Container(
                    color: Colors.grey.shade200,
                    height: 1,
                  )
                ],
              ),
            ),
            flex: ResponsiveLayout.isLargeScreen(context)
                ? 45
                : ResponsiveLayout.isSmallScreen(context) ? 80 : 55,
          ),
          ResponsiveLayout.isLargeScreen(context)
              ? Expanded(
                  child: createCheckOut(),
                  flex: 25,
                )
              : Container(),
          ResponsiveLayout.isLargeScreen(context)
              ? Expanded(
                  child: Container(),
                  flex: 10,
                )
              : Container(),
        ],
      ),
    );
  }

  createApplyCoupon(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        ResponsiveLayout.isSmallScreen(context)
            ? Container()
            : Expanded(
                child: Container(),
                flex: 45,
              ),
        Expanded(
          child: Icon(Icons.card_giftcard),
          flex: ResponsiveLayout.isSmallScreen(context) ? 15 : 05,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Enter coupon code",
              border: border,
              focusedBorder: border,
              enabledBorder: border,
              hintStyle:
                  CustomTextStyle.regularTextStyle.copyWith(color: Colors.grey),
            ),
          ),
          flex: ResponsiveLayout.isSmallScreen(context) ? 40 : 30,
        ),
        Expanded(
          child: RaisedButton(
            child: Text(
              "apply coupon",
              style: CustomTextStyle.regularTextStyle
                  .copyWith(color: Colors.white),
            ),
            elevation: 0,
            textColor: Colors.white,
            color: Colors.black,
            onPressed: () {},
          ),
          flex: ResponsiveLayout.isSmallScreen(context) ? 45 : 20,
        )
      ],
    );
  }

  var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(0),
      borderSide: BorderSide(color: Colors.white, width: 1));

  createUpdateCart() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            "update cart",
            style: CustomTextStyle.regularTextStyle,
          ),
        ],
      ),
    );
  }

  createListItem(context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 16,
          ),
          Row(
            children: <Widget>[
              IconButton(icon: Icon(Icons.close), onPressed: () {}),
              ResponsiveLayout.isLargeScreen(context)
                  ? Container(
                      width: 80,
                      height: 100,
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage("cart_slider.jpg"),
                      ))
                  : Container(),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "white blouse",
                    style: CustomTextStyle.regularTextStyle,
                  ),
                  margin: EdgeInsets.only(left: 24),
                ),
              ),
              ResponsiveLayout.isSmallScreen(context)
                  ? Container()
                  : Expanded(child: createPrice(50)),
              createQuantitySection(context),
              Expanded(
                child: createPrice(50),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey.shade200,
          ),
        ],
      ),
    );
  }

  createQuantitySection(context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(2)),
          border: Border.all(color: Colors.grey.shade300, width: 1)),
      child: Row(
        children: <Widget>[
          ResponsiveLayout.isSmallScreen(context)
              ? Container()
              : Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.only(left: 4, right: 8),
                  child: Text("Quantity"),
                ),
          IconButton(
            icon: Icon(Icons.arrow_left),
            onPressed: () {},
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
          ),
          Container(
            child: Text("1"),
          ),
          IconButton(
            icon: Icon(Icons.arrow_right),
            onPressed: () {},
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
          ),
        ],
      ),
    );
  }

  createPrice(double price) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 24),
      child: Text(
        "\$$price",
        style: CustomTextStyle.regularTextStyle.copyWith(color: Colors.black26),
      ),
    );
  }

  createCheckOut() {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(24),
            child: Text(
              "cart totals",
              style: CustomTextStyle.boldTextStyle.copyWith(fontSize: 28),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 24, right: 12),
                child: Text(
                  "subtotal",
                  style: CustomTextStyle.boldTextStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 24, right: 12),
                child: Text(
                  "\$264",
                  style: CustomTextStyle.regularTextStyle
                      .copyWith(color: Colors.grey),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 24, right: 12, top: 16),
                child: Text(
                  "shipping",
                  style: CustomTextStyle.boldTextStyle,
                ),
              ),
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(left: 24, right: 12, top: 16, bottom: 16),
                  child: Text(
                    "shipping costs will be calculated once you have provided your address.",
                    style: CustomTextStyle.regularTextStyle
                        .copyWith(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 1,
            margin: EdgeInsets.only(top: 24, bottom: 24),
            color: Colors.black.withOpacity(0.1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 24, right: 12),
                child: Text(
                  "total",
                  style: CustomTextStyle.boldTextStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 24, right: 12),
                child: Text(
                  "\$264",
                  style: CustomTextStyle.regularTextStyle
                      .copyWith(color: Colors.black, fontSize: 20),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 16, right: 16, bottom: 24),
            child: RaisedButton(
              onPressed: () {},
              highlightElevation: 0,
              elevation: 0,
              color: Colors.black,
              child: Text(
                "proceed to checkout",
                style: CustomTextStyle.regularTextStyle
                    .copyWith(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
