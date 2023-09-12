import 'package:flutter/material.dart';

class addvoter extends StatefulWidget {
  const addvoter({super.key});

  @override
  State<addvoter> createState() => _addvoterState();
}

class _addvoterState extends State<addvoter> {
  @override
  Widget build(BuildContext context) {
    Widget buildtextfield(String hint, TextEditingController controller) {
      return Container(
        margin: EdgeInsets.all(4),
        child: TextField(
          decoration: InputDecoration(
            labelText: hint,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black38,
              ),
            ),
          ),
          controller: controller,
        ),
      );
    }

    return Container(
      height: 600,
      width: 400,
      child: Column(
        children: [
          Text(
            'ADD VOTER',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
          buildtextfield('id', 'idcontroller' as TextEditingController),
          buildtextfield('name', 'namecontroller' as TextEditingController),
          buildtextfield('email', 'emailcontroller' as TextEditingController),
          ElevatedButton(
            onPressed: () {},
            child: Text('Add Voter'),
          ),
        ],
      ),
    );
  }
}
