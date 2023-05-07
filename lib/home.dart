import 'package:flutter/material.dart';
import 'package:utp/widgets/info_card.dart';

const url = "github.com/qqqodryyy";
const email = "prettyrawfanclub@gmail.com";
const phone = "+628696966996";
const location = "Bogor, West Java, Indonesia";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 88, 88, 90),
        body: SafeArea(
          minimum: const EdgeInsets.only(top: 100),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/pas photo.jpeg'),
              ),
              Text(
                "Muhamad Qodry Ruloh",
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "065120129/6E",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blueGrey[200],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),

              // we will be creating a new widget name info carrd

              InfoCard(
                  text: phone,
                  icon: Icons.account_balance,
                  onPressed: () async {}),
              InfoCard(
                  text: url,
                  icon: Icons.co_present_outlined,
                  onPressed: () async {}),
              InfoCard(
                  text: location,
                  icon: Icons.category_outlined,
                  onPressed: () async {}),
              InfoCard(
                  text: email,
                  icon: Icons.filter_6_outlined,
                  onPressed: () async {}),
            ],
          ),
        ));
  }
}
