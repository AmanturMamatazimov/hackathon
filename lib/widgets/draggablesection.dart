import 'package:best_flutter_ui_templates/widgets/rowwidgets.dart';
import 'package:flutter/material.dart';
import 'explorerow.dart';
import 'rowevents.dart';
import 'rowimages.dart';
import 'rowlists.dart';
import 'searchbar.dart' as searchBarTemp;

class DraggableSection extends StatelessWidget {
  /*final double top;
  final double searchBarHeight;*/
  final scrollController;

  DraggableSection({required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1.1,
        // margin: EdgeInsets.only(top: this.top),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                blurRadius: 30,
                color: Colors.grey,
              )
            ]),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(children: <Widget>[
            ExploreRow(),
            RowWidgets(),
            RowImages(),
            RowEvents(),
            RowLists()
          ]),
        ));
  }
}
