import 'package:ShoppingCart/pages/drawer_menu.dart';
import 'package:ShoppingCart/pages/footer.dart';
import 'package:ShoppingCart/pages/header.dart';
import 'package:ShoppingCart/utils/CustomTextStyle.dart';
import 'package:ShoppingCart/utils/ResponsiveLayout.dart';
import 'package:flutter_web/material.dart';

class AboutUs extends StatelessWidget {
  GlobalKey<ScaffoldState> keyScaffold = GlobalKey();
  double sliderHeight = 500;
  double sliderHeaderFontSize = 60;
  double childAspectRatio=1.2;

  @override
  Widget build(BuildContext context) {
    setUp(context);
    return createScaffold(context);
  }

  createScaffold(context) {
    return Scaffold(
      key: keyScaffold,
      endDrawer: DrawerMenu(),
      body: Builder(builder: (context) {
        return ListView(
          children: <Widget>[
            Header(context),
            slider(),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: getGridCount(context), childAspectRatio: 1.1),
              itemBuilder: (context, position) {
                return createList()[position];
              },
              itemCount: createList().length,
              shrinkWrap: true,
              primary: false,
            ),
            shootingCampaign(context),
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
      sliderHeight = MediaQuery.of(context).size.height / 2;
      sliderHeaderFontSize = 60;
      childAspectRatio = 1.2;
    } else if (ResponsiveLayout.isMediumScreen(context)) {
      sliderHeight = MediaQuery.of(context).size.height / 2;
      sliderHeaderFontSize = 30;
      childAspectRatio = 1.2;
    } else {
      sliderHeight = MediaQuery.of(context).size.height / 3;
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
                image: AssetImage("about_us_slider.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Text(
                    "about us",
                    textAlign: TextAlign.center,
                    style: CustomTextStyle.boldTextStyle.copyWith(
                        fontSize: sliderHeaderFontSize, color: Colors.white),
                  )),
            )
          ],
        ));
  }

  List<Container> createList() {
    List<Container> listContainer = List();
    listContainer.add(createAboutSection(
        "about_section_1.jpg",
        "strategy and timing",
        "Lorem ipsum dolor sit amet, con sectetur adipiscing elit. In ut ullamcor leo eget"));
    listContainer.add(createAboutSection(
        "about_section_2.jpg",
        "social integration",
        "Lorem ipsum dolor sit amet, con sectetur adipiscing elit. In ut ullamcor leo eget"));
    listContainer.add(createAboutSection(
        "about_section_3.jpg",
        "shopping expirience",
        "Lorem ipsum dolor sit amet, con sectetur adipiscing elit. In ut ullamcor leo eget"));
    return listContainer;
  }

  createAboutSection(String imgName, String title, String desc) {
    return Container(
      margin: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image(image: AssetImage(imgName)),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: CustomTextStyle.boldTextStyle.copyWith(fontSize: 20),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            desc,
            style: CustomTextStyle.regularTextStyle
                .copyWith(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  shootingCampaign(context) {
    if(ResponsiveLayout.isSmallScreen(context)){
      return Container(
        margin: EdgeInsets.only(top: 48,bottom: 48,left: 24,right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            columnCampaign(),
            SizedBox(height: 20,),
            columnProgress(),
          ],
        ),
      );
    }
    else{
      return Container(
        margin: EdgeInsets.only(top: 48,bottom: 48),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 24),
                child: columnCampaign(),
              ),
              flex: 40,
            ),
            Expanded(
              child: Container(),
              flex: 10,
            ),
            Expanded(
              child: columnProgress(),
              flex: 40,
            ),
            Expanded(
              child: Container(),
              flex: 10,
            ),
          ],
        ),
      );
    }
  }

  Column columnProgress() {
    return Column(
            children: <Widget>[
              createProgress("Web Design", 76),
              createProgress("Development", 45),
              createProgress("Strategy", 58),
              createProgress("Marketing", 83),
            ],
          );
  }

  Column columnCampaign() {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    "shooting campaign",
                    style:
                        CustomTextStyle.boldTextStyle.copyWith(fontSize: 24),
                  ),
                ),
                Container(
                  width: 40,
                  height: 2,
                  color: Colors.black,
                  margin: EdgeInsets.only(bottom: 16),
                ),
                Wrap(
                  children: <Widget>[
                    Text(
                      "Alierewnum phaedrum torquatos nec eu, dasvis detraxit ertssa periculiser eres frtisi reex,nihdail dexpetendis in mei Meis an lorem tincidunt vix at, vele.adsaasx sensibus id, errdsaeore rwrepicurei mea et. Mea facilisis urbanies tas moderatius id. Vis eires rationibus definiebass, eu qui purto zril laoreet.. Ex error es omnium es interpretaris prout legimus similique vix, te equidem.",
                      style: CustomTextStyle.regularTextStyle.copyWith(
                          fontSize: 16, color: Colors.grey, letterSpacing: 2),
                      softWrap: true,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            );
  }

  createProgress(String title, double value) {
    return Container(
      padding: EdgeInsets.only(top: 8,bottom: 8),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: CustomTextStyle.boldTextStyle,
              ),
              Text(
                value.toString() + "%",
                style:
                    CustomTextStyle.boldTextStyle.copyWith(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          LinearProgressIndicator(
            backgroundColor: Colors.grey,
            value: value/100,
            valueColor: AlwaysStoppedAnimation(Colors.black),
          )
        ],
      ),
    );
  }
}
