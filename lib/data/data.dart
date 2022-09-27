//First Name

import 'dart:core';

const String kName = "Gianluigi";
//Surname
const String kSurname = "De Marco";
//List of adjectives that fit on you
const List<String> kAdjectives = [
  'SOLUTION ORIENTED',
  'ELASTIC',
  'RESPONSIBLE',
  'METICULOUS',
  'AN AWESOME CHEF :)',
];
//A small caption of you
const String kAboutText =
    "I've been writing code since I was six.\nMy main strength is having solution-oriented thinking and being optimistic.\nA phrase from my grandfather that I carry in my heart is: 'When you set yourself a goal, if you are conscious and focused, reality will make sure that every obstacle vanishes'.";
//Substitute 2021 with the year when you start coding
int _yearStartCode = 2021;
int _yearsOfExperience = DateTime.now().year - _yearStartCode;
String kYearsOfExperience =
    _yearsOfExperience < 10 ? "0$_yearsOfExperience" : "$_yearsOfExperience";

//CV link
const cvLink = "https://dmgiangi.dev/curriculum/Gianluigi-De-Marco_CV.pdf";
