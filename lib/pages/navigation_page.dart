import 'package:flutter/material.dart';
import 'package:soletutor/pages/account_screen.dart';
import 'package:soletutor/pages/home_screen.dart';
import 'package:soletutor/pages/learn_screen.dart';
import 'package:soletutor/pages/progress_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  int _selectedIndex=0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex =index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Scaffold(

              appBar: AppBar(
                  title:const Text("My learning"),
                  actions: [
                    IconButton
                      (onPressed: () {

                    },
                      icon: const Icon(Icons.add),
                    ),
                  ],

                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: Builder(
                      builder: (context){
                        return IconButton(
                          icon: const Padding(
                              padding:EdgeInsets.only(left:12),
                              child:Icon(
                                Icons.menu,
                                color:Colors.black,
                              )
                          ),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        );
                      }
                  )
              ),


              drawer: Drawer(
                  backgroundColor: Colors.grey[900],
                  child: const Column(
                      children:[
                        DrawerHeader(
                          child: Icon(
                              Icons.store,
                              color:Colors.white
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),

                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 25.0),
                            child:ListTile(
                              leading:Icon(Icons.home,
                                  color:Colors.white),
                              title: Text("Home",
                                  style:TextStyle(color:Colors.white)),
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 25.0),
                            child:ListTile(
                              leading:Icon(Icons.home,
                                  color:Colors.white),
                              title: Text("Logout",
                                  style:TextStyle(color:Colors.white)),
                            )
                        ),
                      ],
                  ),
              ),
            //Bottom navigation bar
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.book),

                  label:"learning",
                ),

                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Account",
                ),

              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),

            body: const [
              HomeScreen(),
              LearnScreen(),
              AccountScreen(),

            ][_selectedIndex],


        ),
      ],

    );



  }
}
