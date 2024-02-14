<?code-excerpt path-base="example"?>

# simple_form_validations

Simple Validations is a Dart package that provides a collection of validators for common data validation scenarios. It simplifies the process of validating user input in forms, making it easy to ensure that data entered by users meets specific criteria.

## Usage

To use this plugin, add `simple_form_validations` as a [dependency in your pubspec.yaml file](https://flutter.dev/platform-plugins/).

### Example

<?code-excerpt "lib/main.dart"?>

```dart
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsetsDirectional.all(22),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) =>
                      SimpleValidations.usernameOrEmailValidator(value),
                  decoration: const InputDecoration(
                    hintText: 'Validator Demo',
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 22),
                TextFormField(
                  validator: (value) =>
                      SimpleValidations.passwordValidator(value),
                  decoration: const InputDecoration(
                    hintText: 'Strong Password Validator Demo',
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 22),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print("Valid data!");
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

### Available Validators

The following validators are available in the package:

- `emptyFieldValidator`
- `bankIfscValidator`
- `alphaCharactersValidator`
- `alphaCharactersWithSpaceValidator`
- `alphaNumericCharactersValidator`
- `alphaNumericCharactersWithSpaceValidator`
- `numericValidator`
- `numericWithSpaceValidator`
- `passportValidator`
- `panCardValidator`
- `aadhaarValidator`
- `vidValidator`
- `voterIdValidator`
- `socialSecurityValidator`
- `emailValidator`
- `phoneNumberValidator`
- `urlValidator`
- `decimalValidator`
- `passwordValidator`
- `usernameValidator`
- `fileExtensionValidator`
- `ipAddressValidator`
- `hexColorValidator`
- `creditCardValidator`
- `jsonValidator`
- `uuidValidator`
- `isbnValidator`
- `currencyValidator`
- `macAddressValidator`
- `htmlTagValidator`
- `imeiValidator`
- `ageValidator`
- `postalCodeValidator`
- `bankAccountNumberValidator`
- `nameValidator`
- `usernameOrEmailValidator`
- `isbn13Validator`
- `imei15Validator`
- `uuidV4Validator`
- `postalAddressValidator`

## Issues and Feedback

Please feel free to report any issues or bugs you encounter. Your feedback and suggestions are highly appreciated and will help to improve this package.
