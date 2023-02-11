import 'package:education_app/consts/consts.dart';

import '../../controller/auth_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var controller = Get.put(AuthController());

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String? selected ;

  int selectedItem = 0;

  final loginOptions = ['Login for Wholesale', 'Login as Admin'];

  DropdownMenuItem buildMenuItem(String item) {
    return DropdownMenuItem(value: item, child:
    item.text
        .fontFamily("Lato")
        .fontWeight(FontWeight.w400).make(),
    );
  }
  @override
  void initState() {
    super.initState();
    selected = loginOptions[0];
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }


  void validateAdmin(context) {

  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: true,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Flexible(child: Container()),
                  "Enter your credentials".text.size(20).fontFamily("Lato").fontWeight(FontWeight.w700).makeCentered(),
                  36.heightBox,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: primaryBlueColor,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black38,
                                offset: Offset(
                                    0.5,0.5
                                ),
                                blurRadius: 1.0,
                              )],
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              items: loginOptions.map(buildMenuItem).toList(),
                              value: selected,
                              isDense: true,
                              elevation: 2,
                              dropdownColor: primaryBlueColor,
                              borderRadius: BorderRadius.circular(6),
                              isExpanded: true,
                              onChanged: (val){
                                setState(() {
                                  selected = val;
                                  selectedItem = loginOptions.indexOf(selected!);
                                });
                              },
                            ),
                          ),
                        ),
                        20.heightBox,
                        const Divider(color: textBorderColor,height: 2,thickness: 1,),
                        20.heightBox,
                        CustomTextField(
                          controller: emailController,
                          hintText: "Enter your email address",
                          keyboardType: TextInputType.emailAddress,
                        ),
                        12.heightBox,
                        CustomTextField(
                          controller: passwordController,
                          hintText: "Enter your password",
                          isPass: true,
                        ),
                        20.heightBox,
                        MainButton(
                            btnText: "Login",
                            onTap: () {

                            }
                        ),
                        36.heightBox,
                        GestureDetector(
                          onTap: (){},
                          child: "Forget Password?"
                              .text.size(14)
                              .fontFamily("Lato")
                              .fontWeight(FontWeight.w700)
                              .makeCentered(),
                        ),
                        24.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            "Don't have an account?".text
                                .fontFamily("Lato")
                                .fontWeight(FontWeight.w700).make(),
                            4.widthBox,
                            GestureDetector(
                              onTap: (){
                              },
                              child: "Sign up"
                                  .text.size(14)
                                  .color(buttonColor)
                                  .fontFamily("Lato")
                                  .fontWeight(FontWeight.w700)
                                  .makeCentered(),
                            ),
                          ],
                        ),],
                    ),
                  ),
                  Flexible(child: Container()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
