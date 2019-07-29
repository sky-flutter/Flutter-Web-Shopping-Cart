import 'package:ShoppingCart/pages/drawer_menu.dart';
import 'package:ShoppingCart/pages/footer.dart';
import 'package:ShoppingCart/pages/header.dart';
import 'package:ShoppingCart/utils/CustomTextStyle.dart';
import 'package:ShoppingCart/utils/MenuItem.dart';
import 'package:ShoppingCart/utils/ResponsiveLayout.dart';
import 'package:flutter_web/material.dart';

class Search extends StatelessWidget {
  GlobalKey<ScaffoldState> keyScaffold = GlobalKey();
  double sliderHeight = 500;
  double sliderHeaderFontSize = 60;
  double childAspectRatio=1.2;
  
  List<String> listName = List();
  @override
  Widget build(BuildContext context) {
    setUp(context);
    listName.add("Custom Font");
    listName.add("Coming soon page");
    listName.add("Contact Us");
    listName.add("Main Home");
    return createScaffold(context);
  }

  createScaffold(context) {
    
    return Scaffold(
      key: keyScaffold,
      endDrawer: DrawerMenu(MenuItem.MENU_SEARCH),
      body: Builder(builder: (context) {
        return ListView(
          children: <Widget>[
            Header(context,MenuItem.MENU_SEARCH),
            searchSection(),
            Footer()
          ],
        );
      }),
    );
  }

  searchSection(){
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(child: Container(),flex: 20,),
          Expanded(flex: 60,
            child: Container(
              margin: EdgeInsets.only(top: 48,left: 24,right: 24,bottom: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text("New Search : ",style: CustomTextStyle.boldTextStyle.copyWith(fontSize: 24),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24),
                    child: Stack(
                       children: <Widget>[
                         TextFormField(
                           decoration: InputDecoration(
                             contentPadding: EdgeInsets.only(top: 8,bottom: 8,right: 48),
                             hintText: "Type here",
                             hintStyle: CustomTextStyle.regularTextStyle.copyWith(color: Colors.grey),
                             labelStyle: CustomTextStyle.regularTextStyle,
                           ),
                         ),
                         Align(
                           child: Icon(Icons.search,color: Colors.grey,),
                           heightFactor: 02,
                           alignment: Alignment.centerRight,
                         )
                       ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: Text("If you are not happy with the results below please do another search",style: CustomTextStyle.regularTextStyle.copyWith(color: Colors.grey,fontSize: 14),),
                  ),
                  SizedBox(height: 24,),
                  ListView.builder(itemBuilder: (context,position){
                    return listSearchItem(listName[position]);
                  },itemCount: listName.length,shrinkWrap: true,)
                ],
              ),
            ),
          ),
          Expanded(child: Container(),flex: 20,),
        ],
      ),
    );
  }

  listSearchItem(String strTitle){
    return Container(
      padding: EdgeInsets.only(top: 16,bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(strTitle,style: CustomTextStyle.boldTextStyle,),
          SizedBox(height: 16,),
          Container(
            color: Colors.grey.shade300,
            height: 1,
          )
        ],
      ),
    );
  }



  setUp(context) {
    if (ResponsiveLayout.isLargeScreen(context)) {
      sliderHeight = MediaQuery
          .of(context)
          .size
          .height / 2;
      sliderHeaderFontSize = 60;
      childAspectRatio = 1.2;
    } else if (ResponsiveLayout.isMediumScreen(context)) {
      sliderHeight = MediaQuery
          .of(context)
          .size
          .height / 2;
      sliderHeaderFontSize = 30;
      childAspectRatio = 1.25;
    } else {
      sliderHeight = MediaQuery
          .of(context)
          .size
          .height / 3;
      sliderHeaderFontSize = 20;
      childAspectRatio = 1.2;
    }
  }
}
