import 'package:education_app/consts/consts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;
  final Widget? suffixIcon;
  final bool isPass;
  final TextInputType keyboardType;
  final bool readOnly;
  final Color hintColor;
  final Color borderColor;
  final Color fillColor;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.maxLines = 1,
    this.suffixIcon,
    this.readOnly = false,
    this.isPass = false,
    this.fillColor = Colors.white10,
    this.hintColor = textDarkGreyColor,
    this.borderColor = textBorderColor,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final inputBorder = OutlineInputBorder(
        borderSide: BorderSide(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(12)
    );

    return TextField(
      style: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Lato",
          color: hintColor
      ),
      obscureText: isPass,
      readOnly: readOnly,
      controller: controller,
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: suffixIcon != null ? InputDecoration(
          hintText: hintText,
          fillColor: fillColor,
          filled: true,
          border: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          suffixIcon: suffixIcon,
          suffixIconColor: textDarkGreyColor,
          contentPadding: const EdgeInsets.all(16),
          hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: "Lato",
              color: hintColor
          )
      ) : InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: fillColor,
          border: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          contentPadding: const EdgeInsets.all(16),
          hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: "Lato",
              color: hintColor
          )
      ),
    );
  }
}