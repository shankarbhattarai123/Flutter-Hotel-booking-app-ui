import 'package:flutter/material.dart';
import 'package:kunggy/screens/auth%20screens/otpverificationscreen.dart';

class AddPhoneNumber extends StatefulWidget {
  @override
  State<AddPhoneNumber> createState() => _AddPhoneNumberState();
}

class _AddPhoneNumberState extends State<AddPhoneNumber> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Add phone number",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 30, left: 30, right: 20),
        children: [
          Text(
            "For notifications, remainders, and help \nlogging in",
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              height: 50,
              margin: EdgeInsets.only(right: width * 0.05),
              child: TextField(
                  controller: email,
                  onTap: () {},
                  decoration: InputDecoration(
                      labelText: "Phone number",
                      hintText: "98XXXXXXXX",
                      labelStyle: TextStyle(fontSize: 17),
                      hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black54),
                        borderRadius: BorderRadius.circular(15),
                      )))),
          SizedBox(
            height: 30,
          ),
          Text(
            "We'll call or text you to confirm your number, standard message and data rates apply",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              width: 390,
              height: 50,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: <Color>[
                      Colors.pink.shade800.withOpacity(0.8),
                      Colors.red.shade600.withOpacity(0.8),
                      Colors.red.shade400.withOpacity(0.8),
                      Colors.red.shade400.withOpacity(0.8),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        color: Colors.blue.shade200,
                        offset: Offset(2, 2))
                  ],
                  borderRadius: BorderRadius.circular(13)),
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtpVerification()),
                  );
                },
                splashColor: Colors.white.withOpacity(0.2),
                child: Text(
                  "Continue",
                  style: TextStyle(
                      color: Colors.white, fontSize: 17.0, letterSpacing: 1.7),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
