import 'package:flutter/material.dart';
import 'package:slack_testing/widgets/continue_bottom_sheet.dart';

class SelectEmail extends StatelessWidget {
  final int index;
  const SelectEmail({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 15,
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(color: Colors.black, width: 0.1),
                )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 6),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.close_outlined)
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 40),
                          child: Text(
                            (index == 1)
                                ? 'Join another workspace'
                                : 'Create a new workspace',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 17, bottom: 5),
                    child: Text(
                      'Select an email address to use',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(
                      Icons.email_outlined,
                      color: Colors.black54,
                    ),
                    minLeadingWidth: 10,
                    title: Text(
                      'currentaddress@gmail.com',
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      showModalBottomSheet(
                        context: context, 
                        builder: (BuildContext context){
                          return ContinueBottomSheet();
                        },
                      );
                    },
                    leading: Icon(
                      Icons.mark_email_unread_outlined,
                      color: Colors.black54,
                    ),
                    minLeadingWidth: 10,
                    title: Text(
                      'Use a different email address',
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
