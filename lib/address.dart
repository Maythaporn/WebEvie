import 'package:flutter/material.dart';

class AddressForm extends StatefulWidget {
  const AddressForm({Key? key}) : super(key: key);

  @override
  _AddressFormState createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _addressLine1Controller = TextEditingController();
  final TextEditingController _addressLine2Controller = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _zipCodeController = TextEditingController();

  @override
  void dispose() {
    _addressLine1Controller.dispose();
    _addressLine2Controller.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _zipCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _addressLine1Controller,
            decoration: InputDecoration(
              labelText: 'Address line 1',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your address line 1';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _addressLine2Controller,
            decoration: InputDecoration(
              labelText: 'Address line 2',
            ),
          ),
          TextFormField(
            controller: _cityController,
            decoration: InputDecoration(
              labelText: 'City',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your city';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _stateController,
            decoration: InputDecoration(
              labelText: 'State/Province',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your state or province';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _zipCodeController,
            decoration: InputDecoration(
              labelText: 'Zip/Postal code',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your ZIP or postal code';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // TODO: Save the address data and add a charging station
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
