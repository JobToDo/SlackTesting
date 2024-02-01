// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:slack_testing/models/workspaces.dart';
import 'package:slack_testing/screens/add_workspaces.dart';
import 'package:slack_testing/widgets/workspace_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final WorkspacesList = Workspaces.workspacesList();
  List<Workspaces> foundWorkspaces = [];
  late int oldWorkspaceIndex;

  @override
  void initState() {
    foundWorkspaces = WorkspacesList;
    headerContent[0] = WorkspacesList[
            WorkspacesList.indexWhere((item) => item.isSelected == true)]
        .name;
    bodyContent[0] = WorkspacesList[
            WorkspacesList.indexWhere((item) => item.isSelected == true)]
        .address;
    oldWorkspaceIndex = WorkspacesList.indexWhere((item) => item.isSelected == true);
    super.initState();
  }

  int currentIndex = 0;
  List<String> bodyContent = [
    'Home Page',
    'Direct Messages Page',
    'Mentions & Reaction Page',
    'Search Page',
    'Your Profile Page'
  ];

  List<String> headerContent = [
    'Workspace Name',
    'Direct Messages',
    'Mention & Reactions',
    'Search',
    'You'
  ];

  void handleWorkspaceChange(Workspaces workspace) {
    setState(() {
      headerContent[0] = workspace.name;
      bodyContent[0] = workspace.address;
      WorkspacesList[oldWorkspaceIndex].isSelected = false;
      workspace.isSelected = true;
      Navigator.pop(context);
    });
  }

  void getOldWorkspaceIndex() {
    oldWorkspaceIndex =
        WorkspacesList.indexWhere((item) => item.isSelected == true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          headerContent[currentIndex],
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: (currentIndex == 0)
          ? Drawer(
              backgroundColor: Colors.white,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 10),
                      height: 56,
                      child: Text(
                        'Workspaces',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black,width: 0.1)
                        )
                      ),
                      child: ListView(
                        children: [
                          for (Workspaces workspace in foundWorkspaces)
                            WorkspaceItem(
                              workspace: workspace,
                              onWorkspaceChange: handleWorkspaceChange,
                              onIsSelectedChange: getOldWorkspaceIndex,
                            ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AddWorkspacesPage(),
                                )
                            );
                          },
                          leading: Icon(Icons.add_circle_outline),
                          title: Text(
                            'Add a Workspace',
                            style: TextStyle(color: Colors.black),
                          ),
                          minLeadingWidth: 10,
                          iconColor: Colors.black54,
                        ),
                        ListTile(
                          leading: Icon(Icons.settings_outlined),
                          title: Text(
                            'Preferences',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          minLeadingWidth: 10,
                          iconColor: Colors.black54,
                        ),
                        ListTile(
                          leading: Icon(Icons.question_mark_outlined),
                          title: Text(
                            'Help',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          minLeadingWidth: 10,
                          iconColor: Colors.black54,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          : null,
      body: Center(
        child: Text(bodyContent[currentIndex]),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.black,width: 0.25)
          )
        ),
        child: BottomNavigationBar(
          elevation: 0,
          currentIndex: currentIndex,
          onTap: (int newIndex) {
            setState(() {
              currentIndex = newIndex;
            });
          },
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'DMs',
              icon: Icon(Icons.message_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Mentions',
              icon: Icon(Icons.alternate_email_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: 'You',
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
