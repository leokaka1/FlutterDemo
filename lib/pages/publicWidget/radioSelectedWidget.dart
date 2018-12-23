import 'package:flutter/material.dart';
import '../../model/params.dart';

// 横向选择框
class RadioGroupWidget<T> extends StatelessWidget {
  RadioGroupWidget(this.valueList, this.valueChanged);

  // final Value<T> groupValue;
  final List<Value<T>> valueList;
  final ValueChanged<Value<T>> valueChanged;

  Widget _handleItem() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: valueList.map((item) {
            return Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: ActionChip(
                label: Text(item.name),
                onPressed: () {
                  valueChanged(item);
                },
              ),
            );
          }).toList(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return _handleItem();
  }
}
