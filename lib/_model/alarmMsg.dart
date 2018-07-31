import 'package:flutter/material.dart';

class AlarmMsg {
  final int id;
  final Text title;
  final String content;
  final Icon icon;
  final String time;
  const AlarmMsg({this.id, this.title, this.content, this.icon, this.time});
}

const List<AlarmMsg> alarms = <AlarmMsg>[
  const AlarmMsg(
      id: 0,
      title: const Text("출석완료"),
      content: "홍제 아이파크 현장으로 출석완료가 되었습니다.",
      icon: const Icon(
        Icons.access_alarm,
        color: Colors.green,
      ),
      time: "2018-08-01"),
  const AlarmMsg(
      id: 1,
      title: const Text("근무신청"),
      content: "홍제 아이파크 현장으로 근무신청이 되었습니다.",
      icon: const Icon(Icons.access_alarm, color: Colors.blue),
      time: "2018-08-02"),
  const AlarmMsg(
      id: 2,
      title: const Text("거절"),
      content: "홍제 아이파크 현장으로 신청 거절이 되었습니다.",
      icon: const Icon(Icons.access_alarm, color: Colors.red),
      time: "2018-08-03"),
  const AlarmMsg(
      id: 3,
      title: const Text("근무확정"),
      content: "홍제 아이파크 현장으로 근무확정이 되었습니다.",
      icon: const Icon(Icons.access_alarm, color: Colors.yellow),
      time: "2018-08-04"),
  const AlarmMsg(
      id: 4,
      title: const Text("출석완료"),
      content: "홍제 아이파크 현장으로 출석완료가 되었습니다.",
      icon: const Icon(Icons.access_alarm, color: Colors.green),
      time: "2018-08-01"),
  const AlarmMsg(
      id: 5,
      title: const Text("출석완료"),
      content: "홍제 아이파크 현장으로 출석완료가 되었습니다.",
      icon: const Icon(Icons.access_alarm, color: Colors.green),
      time: "2018-08-05"),
  const AlarmMsg(
      id: 5,
      title: const Text("출석완료"),
      content: "홍제 아이파크 현장으로 출석완료가 되었습니다.",
      icon: const Icon(Icons.access_alarm, color: Colors.green),
      time: "2018-08-05"),
  const AlarmMsg(
      id: 5,
      title: const Text("출석완료"),
      content: "홍제 아이파크 현장으로 출석완료가 되었습니다.",
      icon: const Icon(Icons.access_alarm, color: Colors.green),
      time: "2018-08-05"),
  const AlarmMsg(
      id: 5,
      title: const Text("출석완료"),
      content: "홍제 아이파크 현장으로 출석완료가 되었습니다.",
      icon: const Icon(Icons.access_alarm, color: Colors.green),
      time: "2018-08-05"),
  const AlarmMsg(
      id: 5,
      title: const Text("출석완료"),
      content: "홍제 아이파크 현장으로 출석완료가 되었습니다.",
      icon: const Icon(Icons.access_alarm, color: Colors.green),
      time: "2018-08-05"),
  const AlarmMsg(
      id: 5,
      title: const Text("출석완료"),
      content: "홍제 아이파크 현장으로 출석완료가 되었습니다.",
      icon: const Icon(Icons.access_alarm, color: Colors.green),
      time: "2018-08-05"),
  const AlarmMsg(
      id: 5,
      title: const Text("출석완료"),
      content: "홍제 아이파크 현장으로 출석완료가 되었습니다.",
      icon: const Icon(Icons.access_alarm, color: Colors.green),
      time: "2018-08-05"),
  const AlarmMsg(
      id: 5,
      title: const Text("출석완료"),
      content: "홍제 아이파크 현장으로 출석완료가 되었습니다.",
      icon: const Icon(Icons.access_alarm, color: Colors.green),
      time: "2018-08-05"),
  const AlarmMsg(
      id: 5,
      title: const Text("출석완료"),
      content: "홍제 아이파크 현장으로 출석완료가 되었습니다.",
      icon: const Icon(Icons.access_alarm, color: Colors.green),
      time: "2018-08-05"),
  const AlarmMsg(
      id: 5,
      title: const Text("출석완료"),
      content: "홍제 아이파크 현장으로 출석완료가 되었습니다.",
      icon: const Icon(Icons.access_alarm, color: Colors.green),
      time: "2018-08-05"),
];
