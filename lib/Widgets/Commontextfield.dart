import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:map/Utility/Constance.dart';
import 'package:map/Utility/Emailutility.dart';

class CommonTextFormField extends StatelessWidget {
  final String hint;
  final String label;
  final String prefixtext;
  //final String prefixicon;
  final String errormessage;
  final bool ismobilenumber;
  final bool OTPnumber;
  final bool autofocus;
  final bool textinputAction;
  final TextInputType textInputType;
  final List<TextInputFormatter> formatter;
  final bool isEmailvalid;
  final bool firstname;
  final bool lastname;
  final TextEditingController? abc;
  final bool isread;

  CommonTextFormField({
    super.key,
    this.hint = '',
    required this.label,
    this.prefixtext = '',
    this.autofocus = false,
    this.textinputAction = true,
    required this.textInputType,
    this.errormessage = '',
    this.ismobilenumber = false,
    //this.prefixicon = '',
    required this.formatter,
    this.OTPnumber = false,
    this.isEmailvalid = false,
    this.firstname = false,
    this.lastname = false,
    this.abc,
    this.isread = false,
  });

  final TextStyle labelstyle = const TextStyle(color: grey, fontSize: 20);

  final TextStyle hintstyle = const TextStyle(color: grey, fontSize: 20);

  final TextStyle textStyle = const TextStyle(
    color: black,
    fontSize: 20,
  );

  final TextStyle prefixstyle = const TextStyle(color: black);

  final TextStyle mobilenumberstyle = const TextStyle(color: black);

  final InputBorder border =
      const UnderlineInputBorder(borderSide: BorderSide(color: Deeppurple));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 400,
        child: TextFormField(
          readOnly: isread,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: textStyle,
          autofocus: autofocus,
          textInputAction: TextInputAction.next,
          inputFormatters: formatter,
          controller: abc,
          keyboardType: textInputType,
          decoration: InputDecoration(
            focusedBorder: border,
            hintText: hint,
            labelText: label,

            // prefixText: prefixtext,
            prefix: ismobilenumber
                ? Text(
                    '+91',
                    style: mobilenumberstyle,
                  )
                : const SizedBox.shrink(),

            // label: Text(
            //   label,
            //   style: labelstyle,
            // )
            labelStyle: labelstyle,
          ),
          validator: (value) {
            if (ismobilenumber) {
              if (value!.isEmpty || value.length < 10) {
                return errormessage;
              }
            } else if (OTPnumber) {
              if (value!.isEmpty || value.length < 4) {
                return errormessage;
              }
            } else if (isEmailvalid) {
              if (value!.isEmpty || !Utility.isEmailValid(value)) {
                return errormessage;
              }
            } else if (firstname) {
              if (value!.isEmpty) {
                return errormessage;
              }
            } else if (lastname) {
              if (value!.isEmpty) {
                return errormessage;
              }
            }
            return null;
          },
        ),
      ),
    );
  }
}
