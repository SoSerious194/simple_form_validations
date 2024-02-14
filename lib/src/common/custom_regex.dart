/// Custom Regular Expression class for defining all the regular expression patterns
class CustomRegEx {
  /// RegEx for validating bank ifsc number
  static RegExp bankifscRegex = RegExp(r'^[A-Za-z]{4}\w{7}$');

  /// RegEx for validating only alpha characters
  static RegExp alphaRegex = RegExp(r'^[a-zA-Z]+$');

  /// RegEx for validating only alpha characters including space
  static RegExp alphaWithSpaceRegex = RegExp(r'^[a-zA-Z ]+$');

  /// RegEx for validating alpha-numeric characters
  static RegExp alphaNumericRegex = RegExp(r'^[a-zA-Z0-9]+$');

  /// RegEx for validating alpha-numeric characters including space
  static RegExp alphaNumericWithSpaceRegex = RegExp(r'^[a-zA-Z0-9 ]+$');

  /// RegEx for validating numbers
  static RegExp numericRegex = RegExp(r'^[0-9]+$');

  /// RegEx for validating numbers inclusing space
  static RegExp numericWithSpaceRegex = RegExp(r'^[0-9 ]+$');

  /// RegEx for validating passport number
  static RegExp passportRegex = RegExp(r'^[a-zA-Z0-9 ]+$');

  /// RegEx for validating Aadhaar number
  static RegExp aadhaarRegex = RegExp(r'^[2-9]{1}[0-9]{3}[0-9]{4}[0-9]{4}$');

  /// RegEx for validating Aadhaar VID number
  static RegExp aadhaarVidRegex = RegExp(r'^[0-9]{16}$');

  /// RegEx for validating Voter ID number
  static RegExp voterIdRegex = RegExp(r'^[A-Z]{3}[0-9]{7}$');

  /// RegEx for validating Social Security number
  static RegExp ssnRegex = RegExp(r'^\d{9}$');

  /// RegEx for validating PAN number
  static List<RegExp> panRegex = [
    RegExp(r'^[A-Z]+$'),
    RegExp(r'^[0-9]+$'),
  ];

  /// RegEx for validating email address
  static RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  /// RegEx for validating phone number
  static RegExp phoneRegex = RegExp(r'^[0-9]{7,15}$');

  /// RegEx for validating URL
  static RegExp urlRegex =
      RegExp(r'^(http:\/\/|https:\/\/|www\.)?[^\s\.]+\.[^\s]{2,}$');

  /// RegEx for validating decimal number
  static RegExp decimalRegex = RegExp(r'^\d*\.?\d+$');

  /// RegEx for validating password
  static List<RegExp> passwordRegex = [
    RegExp(r'[A-Z]'),
    RegExp(r'[a-z]'),
    RegExp(r'[0-9]'),
  ];

  /// RegEx for validating username
  static RegExp usernameRegex = RegExp(r'^[a-zA-Z0-9_]+$');

  /// RegEx for validating ip address
  static RegExp ipRegex = RegExp(
      r'^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$');

  /// RegEx for validating username
  static RegExp hexColorRegex = RegExp(r'^#?([0-9a-fA-F]{3}){1,2}$');

  /// RegEx for validating credit card number
  static RegExp creditCardRegex = RegExp(r'^[0-9]{13,16}$');

  /// RegEx for validating UUID
  static RegExp uuidRegex = RegExp(
      r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$');

  /// RegEx for validating ISBN
  static RegExp isbnRegex =
      RegExp(r'^(?=(?:\D*\d){10}(?:(?:\D*\d){3})?$)[\d-]{10,17}(?:\d|X)$');

  /// RegEx for validating currency
  static RegExp currencyRegex = RegExp(r'^\d+(\.\d{1,2})?$');

  /// RegEx for validating MAC address
  static RegExp macRegex = RegExp(r'^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$');

  /// RegEx for validating HTML tag
  static RegExp htmlTagRegex = RegExp(r'<([a-z]+) *[^/]*?>.*?<\/\1 *>');

  /// RegEx for validating IMEI number
  static RegExp imeiRegex = RegExp(r'^\d{15}$');

  /// RegEx for validating postal code
  static RegExp postalCodeRegex = RegExp(r'^[0-9]{5}(?:-[0-9]{4})?$');

  /// RegEx for validating bank account number
  static RegExp accountNumberRegex = RegExp(r'^\d{9,18}$');

  /// RegEx for validating name
  static RegExp nameRegex = RegExp(r'^[a-zA-Z]+(?: [a-zA-Z]+)*$');

  /// RegEx for validating username or email
  static RegExp usernameOrEmailRegex =
      RegExp(r'^[a-zA-Z0-9_]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}$|^[a-zA-Z0-9_]+$');

  /// RegEx for validating ISBN 13
  static RegExp isbn13Regex =
      RegExp(r'^(?=(?:\D*\d){13}$)\d{1,5}(?:-\d{1,7}){2}-\d$');

  /// RegEx for validating bank account number
  static RegExp imei15Regex = RegExp(r'^\d{15}$');

  /// RegEx for validating UUID v4
  static RegExp uuidV4Regex = RegExp(
      r'^[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$');

  /// RegEx for validating postal address
  static RegExp postalAddressRegex = RegExp(r'^[0-9a-zA-Z\s.,-]+$');
}
