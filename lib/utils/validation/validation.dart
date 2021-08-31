import 'package:flutter/material.dart';

class Validator {


  static String? documentValidationMsg(String? code) {
    if (code!.isEmpty) {
      return "Doc. Number is required";
    } else if (!validCharacters.hasMatch(code)) {
      return "Special Characters are not allowed";
    } else
      return null;
  }

  static String? codeValidationMsg(String? code) {
    if (code!.isEmpty) {
      return "Code is required";
    } else if (!validCharacters.hasMatch(code)) {
      return "Special Characters are not allowed";
    } else
      return null;
  }

  static String? phoneValidationMsg(String? phone) {
    if (phone!.isEmpty) {
      return "PhoneNumber is required";
    } else if (!validCharacters.hasMatch(phone)) {
      return "Special Characters are not allowed";
    } else if (phone.length < 10) {
      return "PhoneNumber must be atLeast 10 characters";
    } else
      return null;
  }

  static String? usernameValidationMsg(String? username) {
    if (username!.isEmpty) {
      return "Username is required";
    } else if (!validCharacters.hasMatch(username)) {
      return "Special Characters are not allowed";
    } else if (username.length < 3) {
      return "Username must be atleast 3 characters";
    } else if (username.length > 32) {
      return "Username cannot be greater than 32 characters";
    } else
      return null;
  }

  static String? passwordValidationMsg(String? password) {
    if (password!.isEmpty) {
      return "Password is required";
    } else if (password.length < 6) {
      return "Password must be at least 8 characters";
    } else if (password.length > 24) {
      return "Password cannot be greater than 24 characters";
    } else
      return null;
  }

  static String? emailValidationMsg(String? email) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern.toString());
    if (email?.isEmpty ?? true) {
      return "Email is required";
    } else if (!regex.hasMatch(email!)) {
      return "Please provide a valid email";
    } else if (email.length > 45) {
      return "Email must be less than 45 characters";
    } else {
      return null;
    }
  }

  static String? descriptionValidationMsg(String? username) {
    if (username!.isEmpty) {
      return "Address is required";
    } else
      return null;
  }

  static final validCharacters = RegExp(r'^[a-zA-Z0-9 \-,\.]+$');
}
