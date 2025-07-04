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

              // Email
              FormBuilderTextField(
                name: 'email',
                decoration: const InputDecoration(labelText: 'Email'),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(errorText: 'Email is required'),
                  FormBuilderValidators.email(errorText: 'Enter a valid email'),
                ]),
              ),
              const SizedBox(height: 16),

              // Password
              FormBuilderTextField(
                name: 'password',
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(errorText: 'Password is required'),
                ]),
              ),
              const SizedBox(height: 16),

              // Checkbox
              FormBuilderCheckbox(
                name: "acceptTerms",
                title: const Text("I accept the terms"),
              ),
              const SizedBox(height: 16),

              // Checkbox Group
              FormBuilderCheckboxGroup<String>(
                name: "foodPreference",
                decoration: const InputDecoration(labelText: "Food Type"),
                options: const [
                  FormBuilderFieldOption(value: 'Pure Veg'),
                  FormBuilderFieldOption(value: 'Non Veg'),
                ],
                validator: FormBuilderValidators.minLength(
                  1,
                  errorText: "Select at least one option",
                ),
              ),
              const SizedBox(height: 16),

              // Date Range Picker
              FormBuilderDateRangePicker(
                name: 'dateRange',
                firstDate: DateTime(2007),
                lastDate: DateTime(2030),
                decoration: const InputDecoration(labelText: 'Select Date Range'),
              ),
              const SizedBox(height: 16),

              // DateTime Picker
              FormBuilderDateTimePicker(
                name: "dateTime",
                decoration: const InputDecoration(labelText: 'Select Date & Time'),
              ),
              const SizedBox(height: 16),

              // Dropdown
              FormBuilderDropdown<String>(
                name: 'foodItem',
                decoration: const InputDecoration(labelText: 'Choose a food item'),
                items: const [
                  DropdownMenuItem(value: 'pizza', child: Text('Pizza')),
                  DropdownMenuItem(value: 'burger', child: Text('Burger')),
                  DropdownMenuItem(value: 'fries', child: Text('Fries')),
                ],
                validator: FormBuilderValidators.required(errorText: 'Please select a food item'),
              ),
              const SizedBox(height: 16),

              // Radio Group
              FormBuilderRadioGroup<int>(
                name: "ageGroup",
                decoration: const InputDecoration(labelText: 'Choose Age Group'),
                options: const [
                  FormBuilderFieldOption(value: 20, child: Text("20")),
                  FormBuilderFieldOption(value: 30, child: Text("30")),
                ],
                validator: FormBuilderValidators.required(errorText: 'Please select an age group'),
              ),
              const SizedBox(height: 16),

              // Range Slider
              FormBuilderRangeSlider(
                name: "rangeSlider",
                min: 10,
                max: 22,
                initialValue: const RangeValues(12, 18),
                divisions: 6,
                decoration: const InputDecoration(labelText: "Select Range"),
              ),
              const SizedBox(height: 16),

              // Single Slider
              FormBuilderSlider(
                name: "singleSlider",
                initialValue: 15,
                min: 10,
                max: 17,
                divisions: 7,
                decoration: const InputDecoration(labelText: "Adjust Value"),
              ),
              const SizedBox(height: 16),

              // Switch
              FormBuilderSwitch(
                name: 'switchToggle',
                title: const Text("Enable Notifications"),
              ),
              const SizedBox(height: 24),

              // Submit Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.saveAndValidate() ?? false) {
                    final formData = _formKey.currentState!.value;
                    print("✅ Form Submitted:\n$formData");
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Form submitted successfully!")),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Please complete the form properly.")),
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
