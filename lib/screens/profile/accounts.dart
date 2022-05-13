
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:password_manager/routes/auto_route.gr.dart';
import 'package:password_manager/screens/components/bottom_bar.dart';
import 'package:password_manager/screens/components/customButton.dart';
import 'package:password_manager/screens/components/custom_text_field.dart';
import 'package:password_manager/screens/utils/app_colors.dart';
import 'package:password_manager/services/user_profile_services.dart';


class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}


class _UserProfileScreenState extends State<UserProfileScreen> {
  final formKey = GlobalKey();
  final fnController = TextEditingController();
  final lnController = TextEditingController();
  final emController = TextEditingController();
  final pinController = TextEditingController();

  @override
  void dispose(){
    fnController.dispose();lnController.dispose();emController.dispose();pinController.dispose();
  }

  @override
  void initState() {
    fnController.text = UserProfileServices().firstName;
    lnController.text = UserProfileServices().lastName;
    emController.text = UserProfileServices().email;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        // title: const Text("Pm"),
        title: Image.asset('assets/images/title.png',),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome, ${UserProfileServices().name}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                )
            ),
            Expanded(
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Column(
                      children: [
                        const Divider(),
                        const Text("Change Profile"),
                        const Divider(),
                        Center(
                            child: SingleChildScrollView(
                              child: Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
                                  child: Form(
                                    key: formKey,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        CustomTextField(hintText: 'First Name',
                                          controller: fnController, obscure: false,
                                          maxLength: 100, keyboardinputlabel: TextInputType.text,
                                        ),
                                        const SizedBox(height: 10.0,),
                                        CustomTextField(hintText: 'Last Name',
                                          controller: lnController, obscure: false,
                                          maxLength: 100, keyboardinputlabel: TextInputType.text,
                                        ),
                                        const SizedBox(height: 10.0,),
                                        CustomTextField(hintText: 'Email Address',
                                          controller: emController, obscure: false,
                                          maxLength: 100, keyboardinputlabel: TextInputType.emailAddress,
                                        ),
                                        const SizedBox(height: 10.0,),
                                        CustomTextField(hintText: 'Your 4-Number App Pin',
                                            controller: pinController, obscure: true, keyboardinputlabel: TextInputType.number,
                                            maxLength: 4
                                        ),
                                        const SizedBox(height: 20.0,),
                                        CustomButton(
                                          onPressed: () async{
                                            var checkPin = await UserProfileServices().checkPin(pinController.text);
                                            if (checkPin) {
                                              UserProfileServices().updateProfile(
                                                fnController.text.toString(),
                                                lnController.text.toString(),
                                                emController.text.toString(),
                                              );
                                            } else {
                                              return;
                                            }
                                            AutoRouter.of(context).push(const PinCodeScreen());
                                          },
                                          title: 'SAVE',
                                          buttonColor: AppColors().altSuccess,)
                                      ],
                                    ),
                                  )
                              ),
                            )
                        )
                      ],
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(navCurrentScreen: 0,),
    );
  }
}
