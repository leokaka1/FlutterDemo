import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Value<T> {
  final String name;
  final T value;
  const Value({this.name, this.value});
}

const List<Value<AlignmentGeometry>> alignmentValues = [
  const Value(
    name: 'topLeft',
    value: Alignment.topLeft,
  ),
  const Value(
    name: 'topCenter',
    value: Alignment.topCenter,
  ),
  const Value(
    name: 'topRight',
    value: Alignment.topRight,
  ),
  const Value(
    name: 'centerLeft',
    value: Alignment.centerLeft,
  ),
  const Value(
    name: 'center',
    value: Alignment.center,
  
  ),
  const Value(
    name: 'centerRight',
    value: Alignment.centerRight,
  ),
  const Value(
    name: 'bottomLeft',
    value: Alignment.bottomLeft,
  ),
  const Value(
    name: 'bottomCenter',
    value: Alignment.bottomCenter,
  ),
  const Value(
    name: 'bottomRight',
    value: Alignment.bottomRight,
  ),
];

const List<Value<EdgeInsetsGeometry>> paddingValues = [
  const Value(
      name: 'EdgeInsets.fromLTRB',
      value: const EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 50.0)
    ),
  const Value(
      name: 'EdgeInsets.symmetric',
      value: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
    ),
  const Value(
      name: 'EdgeInsets.all',
      value: const EdgeInsets.all(20.0),
    ),
  const Value(
      name: 'EdgeInsets.only',
      value: const EdgeInsets.only(top: 30.0),
    ),
];

const List<Value<EdgeInsetsGeometry>> marginValues = [
  const Value(
    name: 'EdgeInsets.fromLTRB',
    value: const EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
  ),
  const Value(
    name: 'EdgeInsets.symmetric',
    value: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  ),
  const Value(
    name: 'EdgeInsets.all',
    value: const EdgeInsets.all(10.0),
  ),
  const Value(
    name: 'EdgeInsets.only',
    value: const EdgeInsets.only(top: 10.0),
  )
];
