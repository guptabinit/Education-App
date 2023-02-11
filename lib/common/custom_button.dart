import 'package:education_app/consts/consts.dart';

class MainButton extends StatelessWidget {

  final String btnText;
  final Function()? onTap;
  final double vertPadding;
  final double? horiPadding;
  final double radius;
  final Color color;
  final double textSize;

  const MainButton({Key? key, required this.btnText, required this.onTap, this.vertPadding = 16, this.horiPadding, this.radius = 12, this.color = buttonColor, this.textSize = 14}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Material(
      borderRadius: BorderRadius.circular(radius),
      color: color,
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        onTap: onTap,
        child: Container(
          padding: horiPadding == null ? EdgeInsets.symmetric(vertical: vertPadding) : EdgeInsets.symmetric(vertical: vertPadding, horizontal: horiPadding!),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                btnText,
                style: TextStyle(
                    fontSize: textSize,
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}