import 'package:flutter/material.dart';
class NotificationItem {
  final IconData leadingIcon;
  final Color iconcolor;
  final String title;
  final String subtitle;

  NotificationItem({
    required this.leadingIcon,
    required this.iconcolor,
    required this.title,
    required this.subtitle,

  });
}
List<NotificationItem> myListItems = [
  NotificationItem(leadingIcon: Icons.info_outline,iconcolor: Colors.blue, title: "New course added", subtitle: "Geography new course added"),
  NotificationItem(leadingIcon: Icons.info_outline, iconcolor: Colors.blue, title: "Upcoming Subjects", subtitle: "New Subjects are upcoming in few"),
  NotificationItem(leadingIcon: Icons.offline_pin_outlined,iconcolor: const Color.fromRGBO(0, 166, 90, 1), title: "You have successfully completed Test  S", subtitle: "New Subjects are upcoming in few"),
  NotificationItem(leadingIcon: Icons.info_outline,iconcolor: Colors.blue, title: "New course added", subtitle: "Geography new course added"),
  NotificationItem(leadingIcon: Icons.info_outline, iconcolor: Colors.blue, title: "Upcoming Subjects", subtitle: "New Subjects are upcoming in few"),
  NotificationItem(leadingIcon: Icons.offline_pin_outlined,iconcolor: const Color.fromRGBO(0, 166, 90, 1), title: "You have successfully completed Test  S", subtitle: "New Subjects are upcoming in few"),
];


class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 1,
      ),
      body: Column(
        children: [
             Container(
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                border:Border(
                    bottom: BorderSide(
                      color: Color.fromRGBO(206, 212, 218, 1),
                      width: 1,
                    )
                ) ,
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Color.fromRGBO(38, 37, 39, 1),
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Notifications", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(38, 37, 39, 1)),
                    )
                  ],
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 600,
              width: double.infinity,
              child: ListView.builder(
                itemCount: myListItems.length,
                itemBuilder: (context, index) {
                  final item = myListItems[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(item.leadingIcon,color: item.iconcolor,),
                          title: Text(item.title,style: const TextStyle(color: Color.fromRGBO(38, 37, 39, 1),),),
                          subtitle: Text(item.subtitle,style: const TextStyle(color: Color.fromRGBO(88, 93, 108, 1),fontSize: 14),),
                        ),
                        const Divider(
                          height: 1,
                          thickness: 1,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )

        ],
      ),
    );
  }
}
