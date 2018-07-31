import 'package:flutter/material.dart';

String validatePhone(String value) {
  // _formWasEdited = true;
  final RegExp phoneExp = new RegExp(r'/^[0-9]*$/');
  if (value.isEmpty) {
    return '핸드폰은 필수입니다.';
  }
  if (phoneExp.hasMatch(value)) {
    return ' 숫자만 입력해주세요.';
  }

  return null;
}


String validateEmail(String value) {
  // _formWasEdited = true;
  
  // final RegExp phoneExp = new RegExp(r'/^[0-9]*$/');
  if (value.isEmpty) {
    return '이메일은 필수입니다.!';
  }
  if (!value.contains('@')) {
    return "유효하지 않은 이메일 주소입니다.";
  }

  return null;
}

String validatePassword(String value) {
  // _formWasEdited = true;
  
  // final RegExp phoneExp = new RegExp(r'/^[0-9]*$/');
  if (value.isEmpty) {
    return '비밀번호는 필수입니다.';
  }
  if (value.length < 7) {
    return "비밀번호을 8자 까지만 입력하세요.";
  }

  return null;
}


String validateMinStr(String value) {
  // _formWasEdited = true;
  
  // final RegExp phoneExp = new RegExp(r'/^[0-9]*$/');
  // if (value.isEmpty) {
  //   return '비밀번호는 필수입니다.';
  // }
  if (value.length < 3) {
    return "이름을 3자 이상 입력하세요.";
  }

  return null;
}
