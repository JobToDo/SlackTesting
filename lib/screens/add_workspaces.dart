import 'package:flutter/material.dart';
import 'package:slack_testing/widgets/continue_bottom_sheet.dart';
import 'package:slack_testing/widgets/select_email.dart';

class AddWorkspacesPage extends StatefulWidget {
  const AddWorkspacesPage({super.key});

  @override
  State<AddWorkspacesPage> createState() => _AddWorkspacesPageState();
}

class _AddWorkspacesPageState extends State<AddWorkspacesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          'Add workspaces',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black,width: 0.1),
                  bottom: BorderSide(color: Colors.black,width: 0.1)
                )
              ),
              child: Column(
                children: [
                  ListTile(
                    onTap: (){

                    },
                    leading: Icon(Icons.email_outlined,color: Colors.black,),
                    minLeadingWidth: 10,
                    title: Text(
                      'example@gmail.com'
                    ),
                    trailing: Icon(Icons.info_outline,color: Colors.blue,),
                  ),
                  ListTile(
                    onTap: (){

                    },
                    leading: Container(
                      width: 35,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 201, 196, 196),
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: Text(
                        'S',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                    ),
                    minLeadingWidth: 10,
                    title: Text(
                      'SCompany',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'scompanyglobal.slack.com'
                    ),
                    trailing: OutlinedButton(
                      onPressed: () {
                        
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.green)
                      ),
                      child: Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.green
                        ),
                      ),   
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 201, 196, 196),
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: Icon(Icons.check,color: Colors.black,),
                    ),
                    minLeadingWidth: 10,
                    title: Text(
                      "You\'re signed in to all workspaces for this email",
                    ),
                  ),
                ]
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 17,bottom: 5),
                    child: Text(
                      'Not the workspaces you\'re looking for?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){
                      showModalBottomSheet(
                        context: context, 
                        builder: (BuildContext context){
                          return ContinueBottomSheet();
                        },
                      );
                    },
                    leading: Icon(Icons.login_outlined,color: Colors.black54,),
                    minLeadingWidth: 10,
                    title: Text(
                      'Sign in to another workspace',
                    ),
                  ),
                  ListTile(
                    onTap: (){
                      showModalBottomSheet(
                        context: context, 
                        builder: (BuildContext context){
                          return SelectEmail(
                            index: 1,
                          );
                        },
                        isScrollControlled:true,
                      );
                    },
                    leading: Icon(Icons.person_add_outlined,color: Colors.black54,),
                    minLeadingWidth: 10,
                    title: Text(
                      'Join another workspace',
                    ),
                  ),
                  ListTile(
                    onTap: (){
                      showModalBottomSheet(
                        context: context, 
                        builder: (BuildContext context){
                          return SelectEmail(
                            index: 2,
                          );
                        },
                        isScrollControlled:true,
                      );
                    },
                    leading: Icon(Icons.add_outlined,color: Colors.black54,),
                    minLeadingWidth: 10,
                    title: Text(
                      'Create a new workspace',
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
