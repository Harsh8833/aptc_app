import 'dart:io';

import 'package:aptc_app/values/colors.dart';
import 'package:aptc_app/values/text_style.dart';
import 'package:aptc_app/widgets/input_feild_container.dart';
import 'package:aptc_app/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({Key? key}) : super(key: key);

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  var _selectedClass;
  var _selectedGender;
  @override
  void initState() {
    super.initState();
    _selectedClass = 11;
    _selectedGender = 0;
  }

  void setSelectedClass(val) {
    setState(() {
      _selectedClass = val;
    });
  }

  void setSelectedGender(val) {
    setState(() {
      _selectedGender = val;
    });
  }

  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Add new student",
              style: headingDark,
            ),
            const InputContainer(
              child: TextField(
                // controller: nameC,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Name',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                    value: 0,
                    groupValue: _selectedGender,
                    onChanged: (val) {
                      setSelectedGender(val);
                    }),
                const Text("Male"),
                Radio(
                    value: 1,
                    groupValue: _selectedGender,
                    onChanged: (val) {
                      setSelectedGender(val);
                    }),
                const Text("Female"),
              ],
            ),
            const InputContainer(
              child: TextField(
                // controller: nameC,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Father\s Name',
                ),
              ),
            ),
            const InputContainer(
              child: TextField(
                // controller: nameC,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Phone',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                    value: 11,
                    groupValue: _selectedClass,
                    onChanged: (val) {
                      setSelectedClass(val);
                    }),
                const Text("11th"),
                Radio(
                    value: 12,
                    groupValue: _selectedClass,
                    onChanged: (val) {
                      setSelectedClass(val);
                    }),
                const Text("12th"),
              ],
            ),
            Text(_selectedClass.toString()),
            const InputContainer(
              child: TextField(
                // controller: nameC,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Initial Instalment',
                ),
              ),
            ),
            const InputContainer(
              child: TextField(
                // controller: nameC,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Reciept No.',
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const CircleAvatar(
              radius: 100,
              backgroundColor: AppColor.primary,
            ),
            PrimaryButtom(onTap: () {}, text: "Admit")
          ],
        )
      ],
    );
  }
}
