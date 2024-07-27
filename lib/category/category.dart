import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laughzy/background-image/backgroundImage.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  Widget categoryRow(String firstHeader, String secondHeader) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () => {},
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              elevation: 50,
              shadowColor: Colors.deepPurple,
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    firstHeader,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {},
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              elevation: 50,
              shadowColor: Colors.deepPurple,
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    secondHeader,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // BackgroundImage("laugh.jpg"),
        Scaffold(
          backgroundColor: Colors.black,
          drawer: Drawer(

            // backgroundColor:Colors.red,
            //   surfaceTintColor:Colors.white70
          ),
          appBar: AppBar(
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(
                    Icons.double_arrow_sharp,
                    color: Colors.white70,
                    size: 30,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            backgroundColor: Colors.black,
            title: const Center(
              child: Text(
                'Laughzy',
                style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'Lobster'),
              ),
            ),
            elevation: 50,
            // shadowColor: Colors.grey[900],
            actions: [
              Container(
                padding: const EdgeInsets.only(right: 20),
                child: GestureDetector(
                  onTap: () => {},
                  child: Icon(
                    Icons.favorite_outline_rounded,
                    color: Colors.red[400],
                    size: 30,
                  ),
                ),
              )
            ],
          ),

          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10,top: 20),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/laugh.jpg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  categoryRow('Programming','Miscellaneous'),
                  const SizedBox(
                    height: 20,
                  ),
                  categoryRow("Corona" , "Teacher" ),
                  const SizedBox(
                    height: 20,
                  ),
                  categoryRow("Dark" , "Old",),
                  const SizedBox(
                    height: 20,
                  ),
                  categoryRow("Fat" , "Skinny"),
                  const SizedBox(
                    height: 20,
                  ),
                  categoryRow("Bald" , "Stupid" ),
                  const SizedBox(
                    height: 20,
                  ),
                  categoryRow("Tall" , "Short" ),
                  const SizedBox(
                    height: 20,
                  ),
                  categoryRow("Space" , "Name" ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("--Developer: @Ankurit--",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontFamily: "Courgette"),),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              )
            ),
          ),
        )
      ],
    );
  }
}
