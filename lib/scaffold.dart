import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import './drawer_view.dart';
import './layout/column_list.dart';

class CustomScaffold extends StatelessWidget {
  CustomScaffold({this.title, this.drawerTitle, this.bodyView, this.drawerList});
  final String title;
  final String drawerTitle;
  final Widget bodyView;
  final Widget drawerList;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ColumnList(listWidget: drawerList),
      drawer: Opacity(
        opacity: 0.6,
        child: Drawer(
          child: CustomDrawerView(
            drawerTitle: drawerTitle,
            drawerList: drawerList
          )
        )
      )
    );
  }
}
