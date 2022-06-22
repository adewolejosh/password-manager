import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:password_manager/routes/auto_route.gr.dart';
import 'package:password_manager/screens/components/customButton.dart';
import 'package:password_manager/screens/components/custom_text_field.dart';
import 'package:password_manager/screens/utils/app_colors.dart';
import 'package:password_manager/services/social_services.dart';

class AddSocialLink extends StatefulWidget {
  const AddSocialLink({Key? key}) : super(key: key);

  @override
  _AddSocialLinkState createState() => _AddSocialLinkState();
}

class _AddSocialLinkState extends State<AddSocialLink> {
  final smController = TextEditingController();
  final pController = TextEditingController();
  final cpController = TextEditingController();
  late List new_pass;

  showDialog(BuildContext context){
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      title: const Text("Add New Social"),
      content: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Form(
          child: Column(
            children: [
              CustomTextField(hintText: "Name/URL/Link",
                  controller: smController, obscure: false, maxLength: 100,
                  keyboardinputlabel: TextInputType.text
              ),
              CustomTextField(hintText: "New Password",
                  controller: pController, obscure: false, maxLength: 100,
                  keyboardinputlabel: TextInputType.text
              ),
              //generate a new link
              CustomTextField(hintText: "Confirm New password",
                  controller: cpController, obscure: false, maxLength: 100,
                  keyboardinputlabel: TextInputType.text
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomButton(
                onPressed: (){
                	saveLink();
                },
                title: 'ADD',
                buttonColor: AppColors().altSuccess,
              )
            ],
          ),
        ),
      )
    );
  }


  saveLink() async {
    var passwords = await Hive.openBox('password');

    var pk = await passwords.get('length');

    if (pk == null){
      await passwords.put('length', 0);
    }

    if(pk == 0) {
      await passwords.put('password', []);
    }

    var saved = await SocialService().createSocial(
        smController.text.toString(),
        pController.text.toString()
    );

    if(saved) {
      passwords.put('length', pk+1);
      return AutoRouter.of(context).push(const HomeScreen());
    }
  }

  @override
  void dispose() async{
    smController.dispose();pController.dispose();cpController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showDialog(context)
          ],
        )
      ),
    );
  }
}



