import 'package:flutter/material.dart';

class Note {
  Note(this.id, this.title, this.contents, this.expanded);

  int id;
  String title;
  String contents;
  bool expanded;
}

// The entire multilevel list displayed by this app.
List<Note> notes = <Note>[
  Note(
    0,
    '오픈기념',
    '안녕하세요 ^^ 2018년 9월 1일 기념으로 LINKER 어플리케이션이 오픈했습니다.',
    true
    ),
    Note(
    1,
    '광고모집',
    '안녕하세요 ^^ 2018년 9월 1일 기념으로 LINKER 어플리케이션이 오픈했습니다. 광고로 많은 참여바랍니다.',
    false
    ),
    Note(
    2,
    '업데이트 기념',
    '안녕하세요 ^^ 2018년 10월 1일 출석기능을 업데이트 했습니다.',
    false
    ),
    Note(
    3,
    'IOS 오픈 기념',
    '안녕하세요 ^^ 2018년 11월 1일 기념으로 IOS 플랫폼 업데이트 했습니다.',
    false
    ),
    Note(
    4,
    '오픈기념 행사 1',
    '안녕하세요 ^^ 2018년 9월 1일 기념으로 LINKER 어플리케이션이 오픈했습니다.',
    false
    ),
    Note(
    5,
    '오픈기념 행사 2',
    '안녕하세요 ^^ 2018년 9월 1일 기념으로 LINKER 어플리케이션이 오픈했습니다.',
    false
    ),
    Note(
    6,
    '오픈기념 행사 3',
    '안녕하세요 ^^ 2018년 9월 1일 기념으로 LINKER 어플리케이션이 오픈했습니다.',
    false
    ),
];
