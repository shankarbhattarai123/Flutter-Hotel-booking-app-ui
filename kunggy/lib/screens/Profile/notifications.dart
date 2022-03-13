import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            new SliverAppBar(
              title: Text(
                'Notifications',
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              backgroundColor: Colors.white,
              bottom: TabBar(
                tabs: [
                  Tab(
                      child: Text('offers and updates',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500))),
                  Tab(
                      child: Text('Accounts',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500))),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            ListView(
              padding: EdgeInsets.only(top: 20, left: 20, right: 15),
              children: [
                Text("Travel tips and offers",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Inspire your next trip with personalised recommendations and special offers",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Inspiration and offers",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "On:Email and Push",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Edit",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Trip planning",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "On:Email and Push",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Edit",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(height: 10),
                Divider(
                  thickness: 2,
                ),
                SizedBox(height: 10),
                Text("Kunggy updates",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),

                ///
                ///
                ///
                ///
                ///
                ///
                ///
                ///
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Inspire your next trip with personalised recommendations and special offers",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Inspiration and offers",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "On:Email and Push",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Edit",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Trip planning",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "On:Email and Push",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Edit",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(height: 10),
                Divider(
                  thickness: 2,
                ),
                SizedBox(height: 10),
              ],
            ),
            ListView(
              children: [],
            )
          ],
        ),
      )),
    );
  }
}
