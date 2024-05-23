import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class VelcroForm extends StatefulWidget {
  const VelcroForm({Key? key}) : super(key: key);

  @override
  State<VelcroForm> createState() => _VelcroFormState();
}

class _VelcroFormState extends State<VelcroForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _shoeController = TextEditingController();
  final TextEditingController _shoeModelController = TextEditingController();

  Future<void> _submitForm() async {
    try {
      await FirebaseFirestore.instance.collection('cleaning_forms').add({
        'Service': 'Velcro Repair Service',
        'name': _nameController.text,
        'address': _addressController.text,
        'number': _numberController.text,
        'email': _emailController.text,
        'shoe': _shoeController.text,
        'shoeModel': _shoeModelController.text,
        'price':'P3000'
      });
      // Reset the form fields after submission
      _nameController.clear();
      _addressController.clear();
      _numberController.clear();
      _emailController.clear();
      _shoeController.clear();
      _shoeModelController.clear();
      // Show a success message or navigate to another screen

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Form submitted successfully')),
      );
    } catch (error) {
      // Handle errors
      print('Error submitting form: $error');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred. Please try again later.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Velcro Repair Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _addressController,
                decoration: InputDecoration(
                  labelText: 'Address',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _numberController,
                decoration: InputDecoration(
                  labelText: 'Number',
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _shoeController,
                decoration: InputDecoration(
                  labelText: 'Shoe',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _shoeModelController,
                decoration: InputDecoration(
                  labelText: 'Shoe Model',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
