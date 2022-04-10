import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class TabsScreenLogic extends StatefulWidget {
  // const TabsScreenLogic({Key? key, this.pageIndex, this.category})
  //     : super(key: key);
  // TabsScreenLogic({this.category, this.pageIndex});

  @override
  State<TabsScreenLogic> createState() => _TabsScreenLogicState();
}

class _TabsScreenLogicState extends State<TabsScreenLogic> {
  var selectedTab = 1;
  String? pageIndex;
  String? category;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        category!,
        style: TextStyle(
            fontWeight:
                pageIndex! == '1' ? FontWeight.bold : FontWeight.normal),
      ),
      onPressed: () {
        setState(() {
          pageIndex = '1';
        });
      },
    );
  }
}
