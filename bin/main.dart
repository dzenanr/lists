// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:lists/lists.dart';

fn00() {
  var numbers1 = [1, 2, 3];
  numbers1.forEach((v) => print(v));
  print(numbers1);
  print(numbers1[0]);
  
  var numbers2 = new List();
  numbers2.add(1);
  numbers2.add(2);
  numbers2.add(3);
  
  print('');
  for (var i = 0; i < numbers1.length; i++) {
    print(numbers1[i]);
  }
  
  print('');
  for (var number in numbers1) {
    print(number);
  }
}

String fn01() {
  var listOfLists =
      [
       ['Montreal', 'Toronto', 'Vancouver'],
       ['New York', 'Boston', 'San Francisco'],
       ['Paris', 'Marseille']
      ];
  List cities = flatten(listOfLists);
  //cities.sort();
  return cities.join('; ');
}

String fn01b() {
  var list = [['Montreal', 'Toronto', 'Vancouver'], 'Boston', 'Marseille'];
  List cities = flatten(list);
  return cities.join('; ');
}

List fn02() {
  String cities = fn01();
  List listOfCities = cities.split('; '); 
  return listOfCities;
}

String fn03() {
  List cityList = fn02();
  var maxLength = 0;
  var maxLengthCity = '';
  for (var city in cityList) {
    if (maxLength < city.length) {
      maxLength = city.length;
      maxLengthCity = city;
    }
  }
  return maxLengthCity;
}

int fn04() {
  List cityList = fn02();
  var maxLength = 0;
  cityList.forEach((city) => maxLength = (city.length >= maxLength ? city.length : maxLength));
  return maxLength;
}

int fn04b() {
  List cityList = fn02();
  var maxLength = 0;
  cityList.forEach((city) => city.length >= maxLength ? maxLength = city.length : maxLength);
  return maxLength;
}

int fn04c() {
  List cityList = fn02();
  var maxLength = 0;
  cityList.forEach((city) => city.length >= maxLength ? maxLength = city.length : null);
  return maxLength;
}

int fn04e() {
  List cityList = fn02();
  var maxLength = 0;
  cityList.forEach((city) => maxLength = (city.length >= maxLength ? city.length : null));
  return maxLength;
}

// not correct answer
String fn04f() {
  List cityList = fn02();
  var maxLength = 0;
  var maxCity = '';
  cityList.forEach((city) => city.length >= maxLength ? maxCity = city : maxCity = city);
  return maxCity;
}

String fn05() {
  List cityList = fn02();
  var maxl = maxLength(cityList);
  cityList.retainWhere((city) => city.length == maxl);
  return cityList.join('  ');
}

String fn06() {
  List cityList = fn02();
  var maxl = maxLength(cityList);
  Iterable maxLengthCities = cityList.where((city) => city.length == maxl);
  return maxLengthCities.join('  ');
}

String fn07() {
  List cityList = fn02();
  return max(cityList);
}

List fn08(String text) {
  List list = text.split('.');
  return list;
}

List fn09(String text) {
  List list = text.split('');
  return list;
}

fn10() {
  var text = ''' 
I will not teach this course. 
I will provide enough material, pertinent links and programming exercises. 
If you have questions concerning Dart, please use Stackoverflow for Dart. 
If you have questions concerning this course, use the course Forum.''';
  var list = fn08(text);
  print(list);
  var text2 = 'I will not teach this course';
  var list2 = fn09(text2);
  print(list2);
}

main() {
  fn00();
  print('');
  print(fn01());
  print(fn01b());
  print(fn02());
  print('');
  print(fn03());
  print(fn04());
  print(fn04b());
  print(fn04c());
  //print(fn04e());
  print(fn04f());
  print('');
  print(fn05());
  print(fn06());
  print('');
  print(fn07());
  print('');
  fn10();
}
