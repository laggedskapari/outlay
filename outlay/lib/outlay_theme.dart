import 'package:flutter/material.dart';

class OutlayTheme {

  static const backgroundColor = Color.fromARGB(255, 50, 52, 55);
  static const primaryColor = Color.fromARGB(255, 226, 183, 20);
  static const secondaryColor = Color.fromARGB(255, 209, 203, 197);
  static const errorColor = Color.fromARGB(255, 202, 71, 84);
  static const darkBackgroundColor = Color.fromARGB(255, 44, 46, 49);

  static const TextStyle headerFont = TextStyle(
    color: primaryColor,
    fontSize: 22,
    fontWeight: FontWeight.w700,
    fontFamily: 'JetBrainsMono',
  );

  static const TextStyle secondaryHeader = TextStyle(
    color: secondaryColor,
    fontSize: 12,
    fontWeight: FontWeight.w700,
    fontFamily: 'JetBrainsMono'
  );

  static const TextStyle dateTimeHeader = TextStyle(
      color: secondaryColor,
      fontSize: 20,
      fontWeight: FontWeight.w700,
      fontFamily: 'JetBrainsMono'
  );

  static const TextStyle titleFont = TextStyle(
      color: primaryColor,
      fontSize: 18,
      fontWeight: FontWeight.w700,
      fontFamily: 'JetBrainsMono'
  );

  static const TextStyle categoryFont = TextStyle(
      color: secondaryColor,
      fontSize: 15,
      fontWeight: FontWeight.w700,
      fontFamily: 'JetBrainsMono'
  );

  static const TextStyle creditFont = TextStyle(
      color: Colors.green,
      fontSize: 18,
      fontWeight: FontWeight.w700,
      fontFamily: 'JetBrainsMono'
  );

  static const TextStyle debitFont = TextStyle(
      color: errorColor,
      fontSize: 18,
      fontWeight: FontWeight.w700,
      fontFamily: 'JetBrainsMono'
  );
  static const TextStyle utilityCreditFont = TextStyle(
      color: Colors.green,
      fontSize: 15,
      fontWeight: FontWeight.w700,
      fontFamily: 'JetBrainsMono'
  );

  static const TextStyle utilityDebitFont = TextStyle(
      color: errorColor,
      fontSize: 15,
      fontWeight: FontWeight.w700,
      fontFamily: 'JetBrainsMono'
  );

  static const TextStyle monthlyCard = TextStyle(
      color: secondaryColor,
      fontSize: 19,
      fontWeight: FontWeight.w700,
      fontFamily: 'JetBrainsMono'
  );

  static const TextStyle newOutlayCardHeaderFont = TextStyle(
      color: secondaryColor,
      fontSize: 12,
      fontWeight: FontWeight.w700,
      fontFamily: 'JetBrainsMono'
  );

  static const TextStyle newOutlayCardFont = TextStyle(
      color: secondaryColor,
      fontSize: 22,
      fontWeight: FontWeight.w700,
      fontFamily: 'JetBrainsMono'
  );

  static const TextStyle dropdownDebitFont = TextStyle(
      color: errorColor,
      fontSize: 22,
      fontWeight: FontWeight.w700,
      fontFamily: 'JetBrainsMono'
  );

  static const TextStyle dropdownCreditFont = TextStyle(
      color: Colors.green,
      fontSize: 25,
      fontWeight: FontWeight.w700,
      fontFamily: 'JetBrainsMono'
  );

  static const TextStyle dropdownDateFont = TextStyle(
    color: primaryColor,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontFamily: 'JetBrainsMono',
  );

}