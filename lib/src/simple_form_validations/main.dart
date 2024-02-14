import 'dart:convert';

import 'package:simple_form_validations/src/common/custom_regex.dart';

/// [emptyFieldValidator] to validate if a form field is empty or not
///
/// [bankIfscValidator] to validate bank IFSC number
///
/// [alphaCharactersValidator] to validate if a form field contains only alphabets
///
/// [alphaCharactersWithSpaceValidator] to validate if a form field contains alphabets and space
///
/// [alphaNumericCharactersValidator] to validate if a form field contains only alpha-numeric values
///
/// [alphaNumericCharactersWithSpaceValidator] to validate if a form field contains alpha-numeric values and space
///
/// [numericValidator] to validate a number
///
/// [numericWithSpaceValidator] to validate a number
///
/// [passportValidator] to validate a passport number
///
/// [panCardValidator] to validate PAN card number
///
/// [aadhaarValidator] to validate Aadhaar card number
///
/// [vidValidator] to validate Aadhaar VID number
///
/// [voterIdValidator] to validate Voter ID number
///
/// [socialSecurityValidator] to validate social security number
///
/// [emailValidator] to validate an email address
///
/// [phoneNumberValidator] to validate a phone number
///
/// [urlValidator] to validate a URL
///
/// [decimalValidator] to check whether a number is a valid decimal number
///
/// [passwordValidator] to validate whether a password is strong or not
///
/// [usernameValidator] to validate a username
///
/// [fileExtensionValidator] to validate a file path
///
/// [ipAddressValidator] to validate an ip address
///
/// [hexColorValidator] to validate HEX color
///
/// [creditCardValidator] to validate credit card number
///
/// [jsonValidator] to validate json
///
/// [uuidValidator] to validate UUID
///
/// [isbnValidator] to validate ISBN (International Standard Book Number)
///
/// [currencyValidator] to validate ISBN (International Standard Book Number)
///
/// [macAddressValidator] to validate MAC address
///
/// [htmlTagValidator] to validate HTML tag
///
/// [imeiValidator] to validate IMEI number
///
/// [ageValidator] to validate age
///
/// [postalCodeValidator] to validate postal code
///
/// [bankAccountNumberValidator] to validate bank account number
///
/// [nameValidator] to validate name
///
/// [usernameOrEmailValidator] to validate either a valid email or a valid username (alphanumeric with underscore)
///
/// [isbn13Validator] to validate ISBN-13
///
/// [imei15Validator] to validate IMEI 15 digits
///
/// [uuidV4Validator] to validate UUID v4
///
/// [postalAddressValidator] to validate postal address
///
/// [cvvValidator] to validate CVV
///
/// [ipv6Validator] to validate ipv6
///
/// [latitudeValidator] to validate if the provided value matches the pattern of a valid latitude coordinate, ranging from -90 to +90 degrees
///
/// [longitudeValidator] to validate if the provided value matches the pattern of a valid longitude coordinate, ranging from -180 to +180 degrees.
///
/// [usernameOrDisplayNameValidator] to validate whtner the provided value is a valid username or display name
///
/// [emojiValidator] to validate whtner the provided value does not contain any emojis
///
/// [slugValidator] to validate slug

class SimpleValidations {
  /// [emptyFieldValidator] to validate if a form field is empty or not
  /// ```Dart
  /// validator: (value) => SimpleValidations.emptyFieldValidator(value, [errorMessage]),
  /// ```
  static String? emptyFieldValidator(String? value, [String? errorMessage]) {
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    }

    return null;
  }

  /// [bankIfscValidator] to validate bank IFSC number
  /// ```Dart
  /// validator: (value) => SimpleValidations.bankIfscValidator(value, [errorMessage]),
  /// ```
  static String? bankIfscValidator(String? value, [String? errorMessage]) {
    RegExp ifscPattern = CustomRegEx.bankifscRegex;

    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!ifscPattern.hasMatch(value)) {
      return errorMessage ?? 'Invalid IFSC code format';
    }
    return null;
  }

  /// [alphaCharactersValidator] to validate if a form field contains only alphabets
  /// ```Dart
  /// validator: (value) => SimpleValidations.alphaCharactersValidator(value, [errorMessage]),
  /// ```
  static String? alphaCharactersValidator(String? value,
      [String? errorMessage]) {
    RegExp regex = CustomRegEx.alphaRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    }

    if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Only alphabets are allowed';
    }

    return null;
  }

  /// [alphaCharactersWithSpaceValidator] to validate if a form field contains alphabets and space
  /// ```Dart
  /// validator: (value) => SimpleValidations.alphaCharactersWithSpaceValidator(value, [errorMessage]),
  /// ```
  static String? alphaCharactersWithSpaceValidator(String? value,
      [String? errorMessage]) {
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    }
    RegExp regex = CustomRegEx.alphaWithSpaceRegex;
    if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Only alphabets and space is allowed';
    }

    return null;
  }

  /// [alphaNumericCharactersValidator] to validate if a form field contains only alpha-numeric values
  /// ```Dart
  /// validator: (value) => SimpleValidations.alphaNumericCharactersValidator(value, [errorMessage]),
  /// ```
  static String? alphaNumericCharactersValidator(String? value,
      [String? errorMessage]) {
    RegExp regex = CustomRegEx.alphaNumericRegex;

    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Only alpha-numeric characters are allowed';
    }

    return null;
  }

  /// [alphaNumericCharactersWithSpaceValidator] to validate if a form field contains alpha-numeric values and space
  /// ```Dart
  /// validator: (value) => SimpleValidations.alphaNumericCharactersWithSpaceValidator(value, [errorMessage]),
  /// ```
  static String? alphaNumericCharactersWithSpaceValidator(String? value,
      [String? errorMessage]) {
    RegExp regex = CustomRegEx.alphaNumericWithSpaceRegex;

    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ??
          'Only alpha-numeric characters and space is allowed';
    }

    return null;
  }

  /// [numericValidator] to validate a number
  /// ```Dart
  /// validator: (value) => SimpleValidations.numericValidator(value, [errorMessage]),
  /// ```
  static String? numericValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.numericRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter only numeric characters';
    }
    return null;
  }

  /// [numericWithSpaceValidator] to validate a number
  /// ```Dart
  /// validator: (value) => SimpleValidations.numericWithSpaceValidator(value, [errorMessage]),
  /// ```
  static String? numericWithSpaceValidator(String? value,
      [String? errorMessage]) {
    RegExp regex = CustomRegEx.numericWithSpaceRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Only numeric characters and space is allowed';
    }
    return null;
  }

  /// [passportValidator] to validate a passport number
  /// ```Dart
  /// validator: (value) => SimpleValidations.passportValidator(value, [errorMessage]),
  /// ```
  static String? passportValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.passportRegex;

    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid passport number';
    }

    return null;
  }

  /// [panCardValidator] to validate PAN card number
  /// ```Dart
  /// validator: (value) => SimpleValidations.panCardValidator(value, [errorMessage]),
  /// ```
  static String? panCardValidator(String? value, [String? errorMessage]) {
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    }

    if (value.length != 10) {
      return errorMessage ?? 'Please enter a valid PAN number';
    }

    final String firstFive = value.substring(0, 5);
    final String digits = value.substring(5, 9);
    final String lastChar = value.substring(9);

    if (!firstFive.contains(CustomRegEx.panRegex[0])) {
      return errorMessage ?? 'Please enter a valid PAN number';
    }

    if (!digits.contains(CustomRegEx.panRegex[1])) {
      return errorMessage ?? 'Please enter a valid PAN number';
    }

    if (!lastChar.contains(CustomRegEx.panRegex[0])) {
      return errorMessage ?? 'Please enter a valid PAN number';
    }

    if (value[3] != 'P') {
      return errorMessage ?? 'Please enter a valid PAN number';
    }

    return null;
  }

  /// [aadhaarValidator] to validate Aadhaar card number
  /// ```Dart
  /// validator: (value) => SimpleValidations.aadhaarValidator(value, [errorMessage]),
  /// ```
  static String? aadhaarValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.aadhaarRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (value.length != 12) {
      return errorMessage ?? 'Please enter a valid Aadhaar number';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid Aadhaar number';
    }
    return null;
  }

  /// [vidValidator] to validate Aadhaar VID number
  /// ```Dart
  /// validator: (value) => SimpleValidations.emptyFieldValidator(value, [errorMessage]),
  /// ```
  static String? vidValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.aadhaarVidRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (value.length != 16) {
      return errorMessage ?? 'Please enter a valid VID number';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid VID number';
    }
    return null;
  }

  /// [voterIdValidator] to validate Voter ID number
  /// ```Dart
  /// validator: (value) => SimpleValidations.voterIdValidator(value, [errorMessage]),
  /// ```
  static String? voterIdValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.voterIdRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (value.length != 10) {
      return errorMessage ?? 'Please enter a valid Voter ID number';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid Voter ID number';
    }
    return null;
  }

  /// [socialSecurityValidator] to validate social security number
  /// ```Dart
  /// validator: (value) => SimpleValidations.socialSecurityValidator(value, [errorMessage]),
  /// ```
  static String? socialSecurityValidator(String? value,
      [String? errorMessage]) {
    RegExp regex = CustomRegEx.ssnRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (value.length != 9) {
      return errorMessage ?? 'Please enter a valid Social Security number';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid Social Security number';
    }
    return null;
  }

  /// [emailValidator] to validate an email address
  /// ```Dart
  /// validator: (value) => SimpleValidations.emailValidator(value, [errorMessage]),
  /// ```
  static String? emailValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.emailRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid email address';
    }
    return null;
  }

  /// [phoneNumberValidator] to validate a phone number
  /// Accepts phone numbers with or without country code, and without any special characters
  /// ```Dart
  /// validator: (value) => SimpleValidations.phoneNumberValidator(value, [errorMessage]),
  /// ```
  static String? phoneNumberValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.phoneRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid phone number';
    }
    return null;
  }

  /// [urlValidator] to validate a URL
  /// ```Dart
  /// validator: (value) => SimpleValidations.urlValidator(value, [errorMessage]),
  /// ```
  static String? urlValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.urlRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid URL';
    }
    return null;
  }

  /// [decimalValidator] to check whether a number is a valid decimal number
  /// ```Dart
  /// validator: (value) => SimpleValidations.decimalValidator(value, [errorMessage]),
  /// ```
  static String? decimalValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.decimalRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid decimal number';
    }
    return null;
  }

  /// [passwordValidator] to validate whether a password is strong or not
  /// ```Dart
  /// validator: (value) => SimpleValidations.passwordValidator(value, [errorMessage]),
  /// ```
  static String? passwordValidator(String? value, [String? errorMessage]) {
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (value.length < 8) {
      return errorMessage ?? 'Password must be at least 8 characters long';
    } else if (!value.contains(CustomRegEx.passwordRegex[0])) {
      return errorMessage ??
          'Password must contain at least one uppercase letter';
    } else if (!value.contains(CustomRegEx.passwordRegex[1])) {
      return errorMessage ??
          'Password must contain at least one lowercase letter';
    } else if (!value.contains(CustomRegEx.passwordRegex[2])) {
      return errorMessage ?? 'Password must contain at least one digit';
    }
    return null;
  }

  /// [usernameValidator] to validate a username
  /// ```Dart
  /// validator: (value) => SimpleValidations.usernameValidator(value, [errorMessage]),
  /// ```
  static String? usernameValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.usernameRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (value.length < 3 || value.length > 16) {
      return errorMessage ??
          'Username must be between 3 and 16 characters long';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ??
          'Username can only contain letters, numbers, and underscores';
    }
    return null;
  }

  /// [fileExtensionValidator] to validate a file path
  /// ```Dart
  /// validator: (value) => SimpleValidations.fileExtensionValidator(filePath, ['pdf', 'png'], [errorMessage]),
  /// ```
  static String? fileExtensionValidator(
      String? value, List<String> allowedExtensions,
      [String? errorMessage]) {
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    }

    String extension = value.split('.').last;
    if (!allowedExtensions.contains(extension.toLowerCase())) {
      return errorMessage ?? 'Invalid file extension';
    }
    return null;
  }

  /// [ipAddressValidator] to validate an ip address
  /// ```Dart
  /// validator: (value) => SimpleValidations.ipAddressValidator(value, [errorMessage]),
  /// ```
  static String? ipAddressValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.ipRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid IP address';
    }
    return null;
  }

  /// [hexColorValidator] to validate HEX color
  /// ```Dart
  /// validator: (value) => SimpleValidations.hexColorValidator(value, [errorMessage]),
  /// ```
  static String? hexColorValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.hexColorRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid hexadecimal color code';
    }
    return null;
  }

  /// [creditCardValidator] to validate credit card number
  /// ```Dart
  /// validator: (value) => SimpleValidations.creditCardValidator(value, [errorMessage]),
  /// ```
  static String? creditCardValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.creditCardRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid credit card number';
    }
    return null;
  }

  /// [jsonValidator] to validate json
  /// ```Dart
  /// validator: (value) => SimpleValidations.jsonValidator(value, [errorMessage]),
  /// ```
  static String? jsonValidator(String? value, [String? errorMessage]) {
    try {
      if (value == null || value.isEmpty) {
        return errorMessage ?? 'Required';
      }
      json.decode(value);
    } catch (e) {
      return errorMessage ?? 'Please enter a valid JSON';
    }
    return null;
  }

  /// [uuidValidator] to validate UUID
  /// ```Dart
  /// validator: (value) => SimpleValidations.uuidValidator(value, [errorMessage]),
  /// ```
  static String? uuidValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.uuidRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid UUID';
    }
    return null;
  }

  /// [isbnValidator] to validate ISBN (International Standard Book Number)
  /// ```Dart
  /// validator: (value) => SimpleValidations.isbnValidator(value, [errorMessage]),
  /// ```
  static String? isbnValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.isbnRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid ISBN';
    }
    return null;
  }

  /// [currencyValidator] to validate currency
  /// ```Dart
  /// validator: (value) => SimpleValidations.currencyValidator(value, [errorMessage]),
  /// ```
  static String? currencyValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.currencyRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid currency amount';
    }
    return null;
  }

  /// [macAddressValidator] to validate MAC address
  /// ```Dart
  /// validator: (value) => SimpleValidations.macAddressValidator(value, [errorMessage]),
  /// ```
  static String? macAddressValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.macRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid MAC address';
    }
    return null;
  }

  /// [htmlTagValidator] to validate HTML tag
  /// ```Dart
  /// validator: (value) => SimpleValidations.htmlTagValidator(value, [errorMessage]),
  /// ```
  static String? htmlTagValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.htmlTagRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter valid HTML tags';
    }
    return null;
  }

  /// [imeiValidator] to validate IMEI number
  /// ```Dart
  /// validator: (value) => SimpleValidations.imeiValidator(value, [errorMessage]),
  /// ```
  static String? imeiValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.imeiRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid IMEI number';
    }
    return null;
  }

  /// [ageValidator] to validate age
  /// ```Dart
  /// validator: (value) => SimpleValidations.ageValidator(value, [errorMessage]),
  /// ```
  static String? ageValidator(int? value, [String? errorMessage]) {
    if (value == null) {
      return errorMessage ?? 'Required';
    } else if (value <= 0 || value > 150) {
      return errorMessage ?? 'Please enter a valid age';
    }
    return null;
  }

  /// [postalCodeValidator] to validate postal code
  /// ```Dart
  /// validator: (value) => SimpleValidations.postalCodeValidator(value, [errorMessage]),
  /// ```
  static String? postalCodeValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.postalCodeRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid postal code';
    }
    return null;
  }

  /// [bankAccountNumberValidator] to validate bank account number
  /// ```Dart
  /// validator: (value) => SimpleValidations.bankAccountNumberValidator(value, [errorMessage]),
  /// ```
  static String? bankAccountNumberValidator(String? value,
      [String? errorMessage]) {
    RegExp regex = CustomRegEx.accountNumberRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid bank account number';
    }
    return null;
  }

  /// [nameValidator] to validate name
  /// ```Dart
  /// validator: (value) => SimpleValidations.nameValidator(value, [errorMessage]),
  /// ```
  static String? nameValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.nameRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid name';
    }
    return null;
  }

  /// [usernameOrEmailValidator] to validate either a valid email or a valid username (alphanumeric with underscore)
  /// ```Dart
  /// validator: (value) => SimpleValidations.usernameOrEmailValidator(value, [errorMessage]),
  /// ```
  static String? usernameOrEmailValidator(String? value,
      [String? errorMessage]) {
    RegExp regex = CustomRegEx.usernameOrEmailRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid username or email address';
    }
    return null;
  }

  /// [isbn13Validator] to validate ISBN-13
  /// ```Dart
  /// validator: (value) => SimpleValidations.isbn13Validator(value, [errorMessage]),
  /// ```
  static String? isbn13Validator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.isbn13Regex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid ISBN-13 number';
    }
    return null;
  }

  /// [imei15Validator] to validate IMEI 15 digits
  /// ```Dart
  /// validator: (value) => SimpleValidations.imei15Validator(value, [errorMessage]),
  /// ```
  static String? imei15Validator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.imei15Regex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid IMEI number (15 digits)';
    }
    return null;
  }

  /// [uuidV4Validator] to validate UUID v4
  /// ```Dart
  /// validator: (value) => SimpleValidations.uuidV4Validator(value, [errorMessage]),
  /// ```
  static String? uuidV4Validator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.uuidV4Regex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid UUID version 4';
    }
    return null;
  }

  /// [postalAddressValidator] to validate postal address
  /// ```Dart
  /// validator: (value) => SimpleValidations.postalAddressValidator(value, [errorMessage]),
  /// ```
  static String? postalAddressValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.postalAddressRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid postal address';
    }
    return null;
  }

  /// [cvvValidator] to validate CVV
  /// ```Dart
  /// validator: (value) => SimpleValidations.cvvValidator(value, [errorMessage]),
  /// ```
  static String? cvvValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.cvvRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid CVV';
    }
    return null;
  }

  /// [ipv6Validator] to validate ipv6
  /// ```Dart
  /// validator: (value) => SimpleValidations.ipv6Validator(value, [errorMessage]),
  /// ```
  static String? ipv6Validator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.ipv6Regex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid IPv6 address';
    }
    return null;
  }

  /// [latitudeValidator] to validate if the provided value matches the pattern of a valid latitude coordinate, ranging from -90 to +90 degrees
  /// ```Dart
  /// validator: (value) => SimpleValidations.latitudeValidator(value, [errorMessage]),
  /// ```
  static String? latitudeValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.latitudeRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid latitude';
    }
    return null;
  }

  /// [longitudeValidator] to validate if the provided value matches the pattern of a valid longitude coordinate, ranging from -180 to +180 degrees.
  /// ```Dart
  /// validator: (value) => SimpleValidations.longitudeValidator(value, [errorMessage]),
  /// ```
  static String? longitudeValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.longitudeRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid longitude';
    }
    return null;
  }

  /// [usernameOrDisplayNameValidator] to validate whtner the provided value is a valid username or display name
  /// ```Dart
  /// validator: (value) => SimpleValidations.usernameOrDisplayNameValidator(value, [errorMessage]),
  /// ```
  static String? usernameOrDisplayNameValidator(String? value,
      [String? errorMessage]) {
    RegExp regex = CustomRegEx.usernameOrDisplayNameRegex;
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid username or display name';
    }
    return null;
  }

  /// [emojiValidator] to validate whtner the provided value does not contain any emojis
  /// ```Dart
  /// validator: (value) => SimpleValidations.emojiValidator(value, [errorMessage]),
  /// ```
  static String? emojiValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.emojiRegex;

    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter text without emojis';
    }
    return null;
  }

  /// [slugValidator] to validate slug
  /// ```Dart
  /// validator: (value) => SimpleValidations.slugValidator(value, [errorMessage]),
  /// ```
  static String? slugValidator(String? value, [String? errorMessage]) {
    RegExp regex = CustomRegEx.slugRegex;

    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Required';
    } else if (!regex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid slug';
    }
    return null;
  }
}
