import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class SimpleForm extends StatefulWidget {
  @override
  _SimpleFormState createState() => _SimpleFormState();
}

class _SimpleFormState extends State<SimpleForm> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF52AED6),
        title: const Text(
          "Login Form",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: FormBuilder(
          key: _formKey,
          child: Column(
            children: [
              FormBuilderTextField(
                name: 'email',
                decoration: const InputDecoration(labelText: 'Email'),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(),
                ]),
              ),
              const SizedBox(height: 16),

              FormBuilderTextField(
                name: 'password',
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: FormBuilderValidators.required(),
              ),
              const SizedBox(height: 16),

              FormBuilderCheckbox(
                name: "acceptTerms",
                title: const Text("I accept the terms and conditions"),
              ),
              const SizedBox(height: 16),

              FormBuilderCheckboxGroup(
                name: "foodPreference",
                decoration: const InputDecoration(labelText: "Food Type"),
                options: const [
                  FormBuilderFieldOption(value: 'Pure Veg'),
                  FormBuilderFieldOption(value: 'Non Veg'),
                ],
              ),
              const SizedBox(height: 16),

              FormBuilderDateRangePicker(
                name: 'dateRange',
                firstDate: DateTime(2007),
                lastDate: DateTime(2010),
                decoration: const InputDecoration(labelText: 'Select Date Range'),
              ),
              const SizedBox(height: 16),

              FormBuilderDateTimePicker(
                name: "dateTime",
                decoration: const InputDecoration(labelText: 'Select Time'),
              ),
              const SizedBox(height: 16),

              FormBuilderDropdown(
                name: 'foodItem',
                decoration: const InputDecoration(labelText: 'Choose a food item'),
                items: const [
                  DropdownMenuItem(value: 'pizza', child: Text('Pizza')),
                  DropdownMenuItem(value: 'burger', child: Text('Burger')),
                  DropdownMenuItem(value: 'fries', child: Text('Fries')),
                ],
              ),
              const SizedBox(height: 16),

              FormBuilderRadioGroup(
                name: "ageGroup",
                decoration: const InputDecoration(labelText: 'Choose Age Group'),
                options: const [
                  FormBuilderFieldOption(value: 20, child: Text("20")),
                  FormBuilderFieldOption(value: 30, child: Text("30")),
                ],
              ),
              const SizedBox(height: 16),

              FormBuilderRangeSlider(
                name: "rangeSlider",
                min: 10,
                max: 22,
                decoration: const InputDecoration(labelText: "Select Range"),
              ),
              const SizedBox(height: 16),

              FormBuilderSlider(
                name: "singleSlider",
                initialValue: 15,
                min: 10,
                max: 17,
                decoration: const InputDecoration(labelText: "Adjust Value"),
              ),
              const SizedBox(height: 16),

              FormBuilderSwitch(
                name: 'switchToggle',
                title: const Text("Enable Notifications"),
              ),
              const SizedBox(height: 24),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.saveAndValidate() ?? false) {
                    final formData = _formKey.currentState?.value;
                    print("✅ Form Submitted:\n$formData");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Form Submitted Successfully")),
                    );
                  } else {
                    print("❌ Validation failed.");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Please fill all required fields")),
                    );
                  }
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
