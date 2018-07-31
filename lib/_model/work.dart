import 'package:flutter/material.dart';

class Work {
  final int id;
  final int companyId;
  final String title;
  final String pay;
  final String location;
  final String memo;
  final String tag;
  final String workDate;
  final String dueStart;
  final String dueEnd;
  final String inputDate;
  final String inputDate_ymd;
  final String enrollGroup;
  final String matchId;
  final int maxC;
  final int minC;
  final String state;

  Work(
      this.id,
      this.companyId,
      this.title,
      this.pay,
      this.location,
      this.memo,
      this.tag,
      this.workDate,
      this.dueStart,
      this.dueEnd,
      this.inputDate,
      this.inputDate_ymd,
      this.enrollGroup,
      this.matchId,
      this.maxC,
      this.minC,
      this.state);
}
