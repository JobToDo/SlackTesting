import 'package:flutter/material.dart';
import 'package:slack_testing/models/workspaces.dart';

class WorkspaceItem extends StatelessWidget {
  final Workspaces workspace;
  final onWorkspaceChange;
  final onIsSelectedChange;
  const WorkspaceItem({super.key, required this.workspace,required this.onWorkspaceChange,required this.onIsSelectedChange});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onWorkspaceChange(workspace);
        onIsSelectedChange();
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 2,left: 2,right: 2),
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: workspace.isSelected ? Colors.black26 : null,
        ),
        child: Row(
          children: [
            Container(
              width: 52,
              height: 52,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: workspace.isSelected ? Color.fromRGBO(0, 0, 0, 0) : Colors.black26,
                border: workspace.isSelected ? Border.all(color: Colors.black54,width: 2,style: BorderStyle.solid) : null,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text(
                workspace.profile,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      workspace.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      workspace.address,
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: workspace.isSelected ? Icon(Icons.more_horiz,color: Colors.black54,) : null,
            )
          ],
        ),
      ),
    );
  }
}