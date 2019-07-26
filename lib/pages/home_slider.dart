import 'package:flutter_web/material.dart';
import 'package:ShoppingCart/utils/CustomTextStyle.dart';
import 'package:ShoppingCart/utils/ResponsiveLayout.dart';
class HomeSlider extends StatelessWidget{

  double sliderHeight = 500;
  double sliderHeaderFontSize=60;
  List<String> listImage = List();
  List<String> listBannerTitle = List();
  HomeSlider(BuildContext context){
    bannerList();
    bannerTitle();
    setUp(context);
  }

  setUp(context){
    if (ResponsiveLayout.isLargeScreen(context)) {
      sliderHeight = MediaQuery.of(context).size.height/2;
      sliderHeaderFontSize=60;
    } else if (ResponsiveLayout.isMediumScreen(context)) {
      sliderHeight = MediaQuery.of(context).size.height/2;
      sliderHeaderFontSize=30;
    } else {
      sliderHeight = MediaQuery.of(context).size.height/2;
      sliderHeaderFontSize=20;
    }
  }

  void bannerTitle() {
    listBannerTitle.add("a summer breaze");
    listBannerTitle.add("perfect\ntime to shop");
    listBannerTitle.add("sense of\n sophistication");
  }

  void bannerList() {
    listImage.add("banner/banner1.jpg");
    listImage.add("banner/banner2.jpg");
    listImage.add("banner/banner3.jpg");
  }
  @override
  Widget build(BuildContext context) {
    return sliderSection(context);
  }

  sliderSection(context) {
    return Stack(
      children: <Widget>[
        Container(
          height: sliderHeight,
          child: PageView.builder(
            itemBuilder: (context, position) {
              return createSlider(position);
            },
            itemCount: listImage.length,
          ),
        ),
      ],
    );
  }

  createSlider(position) {
    var alignment;
    var crossAxisAlignment;
    var textAlign;
    if (position == 0) {
      alignment = Alignment.center;
      textAlign = TextAlign.center;
      crossAxisAlignment = CrossAxisAlignment.center;
    } else if (position == 1) {
      alignment = Alignment.topLeft;
      textAlign = TextAlign.start;
      crossAxisAlignment = CrossAxisAlignment.start;
    } else {
      alignment = Alignment.topRight;
      textAlign = TextAlign.end;
      crossAxisAlignment = CrossAxisAlignment.end;
    }
    return Container(
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Image(
                image: AssetImage(listImage[position]),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: alignment,
              margin: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: crossAxisAlignment,
                children: <Widget>[
                  Text(
                    listBannerTitle[position],
                    textAlign: textAlign,
                    style: CustomTextStyle.boldTextStyle.copyWith(fontSize: sliderHeaderFontSize),
                  ),
                  Container(
                    width: 100,
                    height: 4,
                    color: Colors.black,
                    margin: EdgeInsets.only(top: 24),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  RaisedButton.icon(
                    onPressed: () {},
                    color: Colors.black,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2))),
                    label: Text(
                      "Subscribe",
                      style: CustomTextStyle.regularTextStyle
                          .copyWith(color: Colors.white, fontSize: 14),
                    ),
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }

}