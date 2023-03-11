import 'package:flutter/material.dart';
import 'package:kata/utils/style.dart';
import 'package:kata/widgets/customTextField.dart';
import 'package:date_time_picker/date_time_picker.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  DateTime currentDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.8,
          child: ListView(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 80, top: 60),
                    child: Image.asset("assets/images/logoWithText.png"),
                  )),
              Container(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Text("Welcome dear,",
                          style: textStyle(
                              fontWeight: FontWeight.w700, fontSize: 26)),
                      const Text("Please, tell us more about you."),
                      Row(
                        children: [
                          Flexible(
                            child: customTextFormField(labelText: "Name"),
                          ),
                          const SizedBox(width: 10),
                          Flexible(
                            child: customTextFormField(labelText: "First Name"),
                          ),
                        ],
                      ),
                      DateTimePicker(
                        decoration: const InputDecoration(
                            labelText: "Date of birth",
                            suffixIcon:
                                Icon(Icons.calendar_today_outlined, size: 20)),
                        style: textStyle(fontSize: 11),
                        type: DateTimePickerType.date,
                        dateMask: 'dd-MM-yyyy',
                        firstDate: DateTime(2004, 1, 1),
                        lastDate: DateTime(2024, 1, 1),
                        calendarTitle: "Selectionnez une date ",
                        cancelText: "Annuler",
                        onChanged: (val) {
                          print(val);
                        },
                      ),
                      DropdownButtonFormField(
                        style: textStyle(fontSize: 11),
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          labelText: "Gender",
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 10),
                          labelStyle: textStyle(fontWeight: FontWeight.w400),
                        ),
                        items: const [
                          DropdownMenuItem(value: "M", child: Text("Male")),
                          DropdownMenuItem(value: "F", child: Text("Female")),
                        ],
                        onChanged: (value) {},
                        validator: (e) {
                          return (e == null)
                              ? "Ce champ est obligatoire"
                              : null;
                        },
                      ),
                      customTextFormField(labelText: "Email"),
                      const CustomPassWordFormField(labelText: "Password"),
                      const CustomPassWordFormField(
                          labelText: "Confirm password"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
