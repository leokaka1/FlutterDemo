import 'package:flutter/material.dart';

class CustomerExpansionList extends StatefulWidget {

  final Widget customerWidget;
  final String title;

  CustomerExpansionList({
    this.customerWidget,
    this.title
  });

  @override
  State<StatefulWidget> createState() {
    return CustomerExpansionListState();
  }
}

class CustomerExpansionListState extends State<CustomerExpansionList> {

  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (int panelIndex, bool isExpanded) {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      children: [
        ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(widget.title),
              );
            },
            body: Container(
              padding: EdgeInsets.only(left: 10),
              child: widget.customerWidget,
            ),
            isExpanded: _isExpanded)
      ],
    );
  }
}
