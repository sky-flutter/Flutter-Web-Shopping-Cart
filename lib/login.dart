import 'package:ShoppingCart/register_user.dart';
import 'package:ShoppingCart/utils/CustomBorder.dart';
import 'package:ShoppingCart/utils/CustomTextStyle.dart';
import 'package:flutter_web/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(),
                  flex: 10,
                ),
                Expanded(
                  child: Container(
                    width: 700,
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
                        Text(
                          "Grocery Fact",
                          style: CustomTextStyle.regularTextStyle.copyWith(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
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
                                labelText: "Mobile No. or Email",
                                enabledBorder: CustomBorder.border,
                                focusedBorder: CustomBorder.border.copyWith(
                                    borderSide:
                                    BorderSide(color: Colors.blue)),
                                errorBorder: CustomBorder.border.copyWith(
                                    borderSide:
                                    BorderSide(color: Colors.red)),
                                labelStyle: CustomTextStyle.regularTextStyle),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                          width: 20,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(48, 16, 48, 16),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "Password",
                                border: CustomBorder.border,
                                enabledBorder: CustomBorder.border,
                                focusedBorder: CustomBorder.border.copyWith(
                                    borderSide:
                                    BorderSide(color: Colors.blue)),
                                errorBorder: CustomBorder.border.copyWith(
                                    borderSide:
                                    BorderSide(color: Colors.red)),
                                labelStyle: CustomTextStyle.regularTextStyle),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 24),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Home()));
                            },
                            child: Text("Login"),
                            padding: EdgeInsets.symmetric(
                                horizontal: 96, vertical: 16),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(left: 48),
                                child: Text(
                                  "New User?",
                                  style: CustomTextStyle.regularTextStyle
                                      .copyWith(
                                      color: Colors.teal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => RegisterUser()));
                              },
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(right: 48),
                              child: Text(
                                "Forget Password?",
                                style: CustomTextStyle.regularTextStyle
                                    .copyWith(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  flex: 80,
                ),
                Expanded(
                  child: Container(),
                  flex: 10,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
