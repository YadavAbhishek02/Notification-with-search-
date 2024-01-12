import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Column(
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
                      controller:
                      TextEditingController(text: "CGP 2024"),
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
                    ),
                  ),
                  Icon(Icons.settings_outlined,color: Colors.grey.shade600),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recent Searches",style:TextStyle(fontSize: 18,color: Color.fromRGBO(0, 0, 0, 1)),),
                Text("Clear History",style: TextStyle(color: Colors.blue),)
              ],
            ),
          ),

           ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return  SizedBox(
                height: 100,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                         Container(
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image:  const DecorationImage(
                                image:  AssetImage("assets/image/Forum1.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          height: 80,
                          width: 80,
                        ),
                      const SizedBox(width: 10,),
                      Container(
                          decoration:  const BoxDecoration(
                          ),
                          height: 80,
                          width: 260,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('CGP 2024 (Delhi Center)',style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1),fontSize: 18),),
                            Row(
                              children: [
                                Text("Specialization",style: TextStyle(fontSize: 16),),
                                SizedBox(width: 5,),
                                Text("."),
                                SizedBox(width: 5,),
                                Text("5 Courses")
                              ],
                            ),
                             Row(
                                 children: [
                                   Icon(Icons.star_border_outlined,color: Colors.red,size: 16,),
                                   SizedBox(width: 5,),
                                   Text('4.8', style: TextStyle(fontSize: 16,color: Color.fromRGBO(88, 93, 108, 1))),
                                   SizedBox(width: 10,),
                                   Text('|', style: TextStyle(fontSize: 16,color: Color.fromRGBO(88, 93, 108, 1))),
                                   SizedBox(width: 10,),
                                   Icon(Icons.person_2_outlined,color: Colors.grey,size: 16,),
                                   SizedBox(width: 5,),
                                   Text('5k', style: TextStyle(fontSize: 16,color: Color.fromRGBO(88, 93, 108, 1)),),
                               ],
                             )
                          ],
                        ),
                        ),
                    ],
                  ),
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}
