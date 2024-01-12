import 'package:flutter/material.dart';
import 'package:untitled1/Notification/Search_result_page.dart';
List imageList=[
  {"id":1,"image_path": 'assets/image/Forum1.jpg'},
  {"id":1,"image_path": 'assets/image/forum3.jpg'},
  {"id":1,"image_path": 'assets/image/ForumIAS2.jpg'},
];
class ButtonData {
  final String label;
  ButtonData(this.label);
}
class SearchtItem {
  final String title;
  final IconData iconData;
  SearchtItem({required this.title, required this.iconData});
}
class Searchtcategory {
  final String title;
  final IconData iconData;
  Searchtcategory({required this.title, required this.iconData});
}
List<ButtonData> buttonsData = [
  ButtonData('Online'),
  ButtonData('Offline'),
  ButtonData('Hybrid'),
  ButtonData('Online'),
  ButtonData('Offline'),
  ButtonData('Hybrid'),
];
List<SearchtItem> searchItems = [
  SearchtItem(title: "CGP 2024", iconData: Icons.watch_later_outlined,),
  SearchtItem(title: "GS Foundation 2024", iconData: Icons.watch_later_outlined,),
  SearchtItem(title: "Current Affairs", iconData: Icons.watch_later_outlined,),
  SearchtItem(title: "MGP", iconData: Icons.watch_later_outlined,),
];
List<Searchtcategory> searchcategory = [
  Searchtcategory(title: "Pre-cum-Mains Foundation 2024", iconData: Icons.arrow_forward_ios_rounded,),
  Searchtcategory(title: "GS Advanced Program 2023", iconData:Icons.arrow_forward_ios_rounded,),
  Searchtcategory(title: "Current Affairs 2024", iconData:Icons.arrow_forward_ios_rounded,),
  Searchtcategory(title: "Prelims Test Series 2024", iconData: Icons.arrow_forward_ios_rounded,),
  Searchtcategory(title: "Optional Test Series", iconData: Icons.arrow_forward_ios_rounded,),
  Searchtcategory(title: "Optional Foundation", iconData: Icons.arrow_forward_ios_rounded,),

];
List<bool> buttonPressedState = List.generate(buttonsData.length, (index) => false);
class NotificationHomePage extends StatefulWidget {
  const NotificationHomePage({super.key});

  @override
  State<NotificationHomePage> createState() => _NotificationHomePageState();
}

class _NotificationHomePageState extends State<NotificationHomePage> {
  bool searchPressed= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              decoration: const BoxDecoration(
                color: Colors.white,
                border:Border(
                    bottom: BorderSide(
                      color: Color.fromRGBO(206, 212, 218, 1),
                      width: 1,),
                ) ,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                   SizedBox(
                     height: 45,
                     width: 300,
                     child: TextField(
                       maxLines: 1,
                       cursorHeight: 25,
                       cursorColor: Colors.grey.shade800,
                       textAlignVertical: TextAlignVertical.center,
                       enableSuggestions: false,
                       autocorrect: false,
                       style: const TextStyle(
                         height:1.4,
                         fontSize: 16,
                       ),
                       textAlign: TextAlign.start,
                       decoration: InputDecoration(
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10.0),
                           borderSide: BorderSide.none,
                         ),
                         filled: true,
                         fillColor: Colors.grey.shade200,
                         hintText: "What do you want to learn?",
                         hintStyle: TextStyle(color: Colors.grey.shade500,fontSize: 13),
                         prefixIcon: Icon(Icons.search,color: Colors.grey.shade600),
                       ),
                       onTap: () {
                         setState(() {
                           searchPressed = true;
                         });
                       },
                       onEditingComplete: () {
                         setState(() {
                           searchPressed = false;
                         });
                       },
                     ),
                   ),
                    Icon(Icons.settings_outlined,color: Colors.grey.shade600),
                  ],
                ),
              ),
            ),
             Visibility(
               visible: !searchPressed,
               child: const Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Recent Searches",style:TextStyle(fontSize: 18,color: Color.fromRGBO(0, 0, 0, 1)),),
                    Text("Clear History",style: TextStyle(color: Colors.blue),)
                    ],
                  ),
                ),
             ),

            Visibility(
              visible: !searchPressed,
              child: SizedBox(
                height: 250,
                width: double.infinity,
                child: buildListView(),
              ),
            ),
            Visibility(
              visible: !searchPressed,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Trending on ForumIAS",style:TextStyle(fontSize: 18,color: Color.fromRGBO(0, 0, 0, 1)),),
                    Text("See All",style: TextStyle(color: Colors.blue),)
                  ],
                ),
              ),
            ),
            Visibility(
              visible: !searchPressed,
              child: SizedBox(
                height: 250,
                width: double.infinity,
                child: buildListView(),
              ),
            ),
            Visibility(
              visible: !searchPressed,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Explore Your Interest",style:TextStyle(fontSize: 18,color: Color.fromRGBO(0, 0, 0, 1)),),
                    Text("See All",style: TextStyle(color: Colors.blue),)
                  ],
                ),
              ),
            ),
            Visibility(
              visible: !searchPressed,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: SizedBox(
                    height: 120,
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.topCenter,
                        child: buildButtons(context)))
                ),
            ),
            Visibility(
              visible: !searchPressed,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Courses",style:TextStyle(fontSize: 18,color: Color.fromRGBO(0, 0, 0, 1)),),
                    Text("See All",style: TextStyle(color: Colors.blue),)
                  ],
                ),
              ),
            ),
            Visibility(
              visible: !searchPressed,
              child: SizedBox(
                height: 250,
                width: double.infinity,
                child: buildListView(),
              ),
            ),
            Visibility(
              visible: searchPressed,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Recent Searches",style:TextStyle(fontSize: 18,color: Color.fromRGBO(0, 0, 0, 1)),),
                        Text("Clear History",style: TextStyle(color: Colors.blue),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: searchItems.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          title: InkWell(
                              onTap: () {
                                if(index== 0) {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SearchResult()));
                                }
                              },
                              child: Text(searchItems[index].title,style: const TextStyle(color: Color.fromRGBO(88, 93, 108, 1)),)),
                          leading: Icon(searchItems[index].iconData),
                          // Add any other customizations you need for each ListTile
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Text("Categories",style:TextStyle(fontSize: 18,color: Color.fromRGBO(0, 0, 0, 1)),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: searchcategory.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          title: Text(searchcategory[index].title,style: const TextStyle(color: Color.fromRGBO(88, 93, 108, 1)),),
                          trailing: Icon(searchcategory[index].iconData),
                          // Add any other customizations you need for each ListTile
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget buildButtons(BuildContext context) {
    return  GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Set the number of columns you want
        crossAxisSpacing: 10, // Set horizontal spacing
        mainAxisSpacing: 20,
        childAspectRatio: 2.5,// Set vertical spacing
      ),
      itemCount: buttonsData.length,
      itemBuilder: (BuildContext context, int index) {
        final item = buttonsData[index];
        return ElevatedButton.icon(
          icon: buttonPressedState[index] ?
          Icon(Icons.check,color: Colors.grey.shade800, size: 18,) :Icon(Icons.add,color: Colors.grey.shade800, size: 18,),
          style: ElevatedButton.styleFrom(
            backgroundColor:  buttonPressedState[index]  ? Colors.blue.shade100 : Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            side: BorderSide(color: buttonPressedState[index] ? Colors.blue : Colors.black26,),
          ),
          label: Text(
            item.label,
            style: TextStyle(
              color: buttonPressedState[index] ? Colors.black : Colors.grey.shade800,
              fontWeight: FontWeight.w400,
            ),
          ),
          onPressed: () {
            setState(() {
              buttonPressedState[index] = !buttonPressedState[index];
            });
          },
        );
      },
    );
  }
}

Widget buildListView() {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 50,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Container(
          height: 30,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 110,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                        imageList[index % imageList.length]["image_path"]),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 3,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Pre-cum-mains Foundation 2024 (Delhi Center)',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                        letterSpacing: 0.5,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 3,),
                    Text(
                      'Subtitle',
                      style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        Text(
                          'Specialization',
                          style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
                        ),
                        const SizedBox(width: 20,),
                        Text(
                          '5 Courses',
                          style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        const Icon(Icons.star_border_outlined, color: Colors.red, size: 12,),
                        Text(
                          '4.8',
                          style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          '|',
                          style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
                        ),
                        const SizedBox(width: 10,),
                        const Icon(Icons.person_2_outlined, color: Colors.grey, size: 12,),
                        Text(
                          '5k',
                          style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

