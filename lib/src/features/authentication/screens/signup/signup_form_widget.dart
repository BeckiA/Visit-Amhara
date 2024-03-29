import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login_app/src/features/authentication/controllers/signup_controllers.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/text_strings.dart';
import '../../model/user_model.dart';
import '../forget_password/forget_password_otp/forgot_password_otp_screen.dart';

class SignUpForm extends StatefulWidget {
  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  late final _formKey;
  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    // final TextEditingController phoneController = PhoneFieldEditingController();
  }

  bool _obscureText = true;
  // TextEditingController _phoneController = TextEditingController();
  // replace with your desired initial value
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    String phoneNumberValue = controller.phoneNo.text;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              style: TextStyle(fontSize: 16.0),
              decoration: const InputDecoration(
                label: Text(VAFullName),
                prefixIcon: Icon(LineAwesomeIcons.user),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: controller.email,
              style: TextStyle(fontSize: 16.0),
              decoration: const InputDecoration(
                label: Text(VAEmail),
                prefixIcon: Icon(LineAwesomeIcons.envelope),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Theme(
              data: Theme.of(context).copyWith(
                textTheme: Theme.of(context).textTheme.copyWith(
                      subtitle1: TextStyle(
                          fontSize: 16,
                          color: VASeconsdaryColor), // change font size here
                    ),
              ),
              child: IntlPhoneField(
                style: TextStyle(fontSize: 16.0),
                autovalidateMode: AutovalidateMode.disabled,
                decoration: InputDecoration(
                  label: Text(VAPhoneNo),
                  counterText: "",
                ),
                initialCountryCode: "ET",
                onChanged: (phone) {
                  print(phone.completeNumber);
                  phoneNumberValue = phone.completeNumber;
                },
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              obscureText: _obscureText,
              controller: controller.password,
              style: TextStyle(fontSize: 16.0),
              decoration: InputDecoration(
                label: Text(VAPassword),
                prefixIcon: Icon(LineAwesomeIcons.key),
                suffix: IconButton(
                  icon: _obscureText
                      ? Icon(LineAwesomeIcons.eye)
                      : Icon(LineAwesomeIcons.eye_slash),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey?.currentState?.validate() ?? false) {
                    // SignUpController.instance.registerUser(
                    //   controller.email.text.trim(),
                    //   controller.password.text.trim(),
                    // );

                    final user = UserModel(
                        email: controller.email.text.trim(),
                        password: controller.password.text.trim(),
                        fullName: controller.fullName.text.trim(),
                        phoneNo: phoneNumberValue.trim());

                    SignUpController.instance.createUser(user);
                  }
                },
                child: Text(VASignup.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
