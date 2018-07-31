import 'package:flutter/material.dart';
import '../_color/colors.dart';

class CheckOut {
  final int id;
  final String title;
  final Icon icon;
  final Color color;
  final Color splachColor;
  const CheckOut(
      {this.id, this.title, this.icon, this.color, this.splachColor});
}

const List<CheckOut> checkouts = <CheckOut>[
  const CheckOut(
      id: 0,
      title: "카드결제",
      icon: const Icon(
        Icons.access_alarm,
        color: Colors.green,
      ),
      color: Colors.blueGrey,
      splachColor: Colors.grey),
  const CheckOut(
      id: 1,
      title: "무통장입금",
      icon: const Icon(
        Icons.access_alarm,
        color: Colors.green,
      ),
      color: Colors.blueGrey,
      splachColor: Colors.grey),
  const CheckOut(
      id: 2,
      title: "가상계좌",
      icon: const Icon(
        Icons.access_alarm,
        color: Colors.green,
      ),
      color: Colors.blueGrey,
      splachColor: Colors.grey),
  const CheckOut(
      id: 3,
      title: "휴대폰결제",
      icon: const Icon(
        Icons.access_alarm,
        color: Colors.green,
      ),
      color: Colors.blueGrey,
      splachColor: Colors.grey),
  const CheckOut(
      id: 4,
      title:"페이코",
      icon: const Icon(
        Icons.access_alarm,
        color: Colors.green,
      ),
      color: Colors.blueGrey,
      splachColor: Colors.grey),
  const CheckOut(
      id: 5,
      title: "카카오페이",
      icon: const Icon(
        Icons.access_alarm,
        color: Colors.green,
      ),
      color: Colors.blueGrey,
      splachColor: Colors.grey),

];
