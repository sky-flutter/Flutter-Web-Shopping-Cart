import 'package:ShoppingCart/utils/CustomBorder.dart';
import 'package:ShoppingCart/utils/CustomTextStyle.dart';
import 'package:flutter_web/material.dart';
class RegisterUser extends StatefulWidget{
  @override
  RegisterUserState createState()=>RegisterUserState();

}


class RegisterUserState extends State<RegisterUser>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(),
              flex: 20,
            ),
            Expanded(
              child: Container(
                width:700 ,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                      width: 20,
                    ),
                    Image(
                      image: AssetImage("ic_logo.png"),
                      height: 48,
                    ),
                    SizedBox(
                      height: 10,
                      width: 20,
                    ),
                    Text("Grocery Fact",style: CustomTextStyle.regularTextStyle.copyWith(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 80,
                      width: 20,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(48, 16, 48, 16),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            border: CustomBorder.border,
                            hasFloatingPlaceholder: true,
                            labelText: "Name",
                            enabledBorder: CustomBorder.border,
                            focusedBorder: CustomBorder.border.copyWith(
                                borderSide: BorderSide(color: Colors.blue)),
                            errorBorder: CustomBorder.border.copyWith(
                                borderSide: BorderSide(color: Colors.red)),
                            labelStyle: CustomTextStyle.regularTextStyle),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(48, 16, 48, 16),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            border: CustomBorder.border,
                            hasFloatingPlaceholder: true,
                            labelText: "Mobile No",
                            enabledBorder: CustomBorder.border,
                            focusedBorder: CustomBorder.border.copyWith(
                                borderSide: BorderSide(color: Colors.blue)),
                            errorBorder: CustomBorder.border.copyWith(
                                borderSide: BorderSide(color: Colors.red)),
                            labelStyle: CustomTextStyle.regularTextStyle),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(48, 16, 48, 16),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: CustomBorder.border,
                            hasFloatingPlaceholder: true,
                            labelText: "Email",
                            enabledBorder: CustomBorder.border,
                            focusedBorder: CustomBorder.border.copyWith(
                                borderSide: BorderSide(color: Colors.blue)),
                            errorBorder: CustomBorder.border.copyWith(
                                borderSide: BorderSide(color: Colors.red)),
                            labelStyle: CustomTextStyle.regularTextStyle),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(48, 8, 48, 16),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Password",
                            border: CustomBorder.border,
                            enabledBorder: CustomBorder.border,
                            focusedBorder: CustomBorder.border.copyWith(
                                borderSide: BorderSide(color: Colors.blue)),
                            errorBorder: CustomBorder.border.copyWith(
                                borderSide: BorderSide(color: Colors.red)),
                            labelStyle: CustomTextStyle.regularTextStyle),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 24),
                      child: RaisedButton(onPressed: (){},child: Text("Register"),padding: EdgeInsets.symmetric(horizontal: 96,vertical: 16),),
                    ),

                  ],
                ),
              ),
              flex: 80,
            ),
          ],
        ),
      ),
    );
  }

}