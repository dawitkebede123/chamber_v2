import 'package:flutter/material.dart';
// Import additional libraries if needed, like Firebase or form validation

class AddBusinessPage extends StatefulWidget {
  const AddBusinessPage({super.key});

  @override
  State<AddBusinessPage> createState() => _AddBusinessPageState();
}

class _AddBusinessPageState extends State<AddBusinessPage> {
  final _formKey = GlobalKey<FormState>(); // For form validation
  // Define form fields and state variables here
  String _name = '';
  String _email = '';
  String _Tel = '';
  String _category = ''; // Possible values: "Almanac" or "Business Directory"
  String _contact = '';
  // ... other fields

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Add Business'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // Assign form key
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Business Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a business name';
                  }
                  return null; // Valid
                },
                onSaved: (value) => setState(() => _name = value!),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'E-mail'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter you company email';
                  }
                  return null; // Valid
                },
                onSaved: (value) => setState(() => _email = value!),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Phone'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter you company phone number';
                  }
                  return null; // Valid
                },
                onSaved: (value) => setState(() => _Tel = value!),
              ),
                           ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save(); // Save form data
                    // Add the business data (replace with your logic)
                    // ... (e.g., save to Firebase, local storage)
                    Navigator.pop(context); // Close the Add Business page
                  }
                },
                child: const Text('Add Business'),
              ),
             
              ])))

      );
      }}
//         title: const Text('Add Business'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey, // Assign form key
//           child: Column(
//             children: [
//               TextFormField(
//                 decoration: const InputDecoration(labelText: 'Business Name'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter a business name';
//                   }
//                   return null; // Valid
//                 },
//                 onSaved: (value) => setState(() => _name = value!),
//               ),
//               // ... other form fields for category, contact, etc.
//    DropdownButtonFormField<String>(
//   value: _category,  // Check if _category matches an item value
//   decoration: const InputDecoration(labelText: 'Category'),
//   items: const [  // Ensure at least one item is present
//     DropdownMenuItem(value: 'Almanac', child: Text('Almanac')),
//     DropdownMenuItem(value: 'Business Directory', child: Text('Business Directory')),
//   ],
//   onChanged: (value) => setState(() => _category = value!),
//   validator: (value) {
//     if (value == null || value.isEmpty) {
//       return 'Please select a category';
//     }
//     return null; // Valid
//   },
// ),




//               // ...
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     _formKey.currentState!.save(); // Save form data
//                     // Add the business data (replace with your logic)
//                     // ... (e.g., save to Firebase, local storage)
//                     Navigator.pop(context); // Close the Add Business page
//                   }
//                 },
//                 child: const Text('Add Business'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
