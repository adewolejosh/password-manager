
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:password_manager/services/user_profile_services.dart';
import 'package:password_manager/routes/auto_route.gr.dart';


class PinCodeScreen extends StatefulWidget {
  const PinCodeScreen({Key? key}) : super(key: key);

  @override
  _PinCodeScreenState createState() => _PinCodeScreenState();
}


class _PinCodeScreenState extends State<PinCodeScreen> {
  final _formKey = GlobalKey();
  final p1 = TextEditingController();
  final p2 = TextEditingController();
  final p3 = TextEditingController();
  final p4 = TextEditingController();
  final fNode_1 = FocusNode();
  final fNode_2 = FocusNode();
  final fNode_3 = FocusNode();
  final fNode_4 = FocusNode();

  void submitCheck(context) async{
    if(p1.text.length == 1 && p2.text.length == 1 && p3.text.length == 1 && p4.text.length == 1){
      var pin = p1.text + p2.text + p3.text + p4.text;
      var checkPin = await UserProfileServices().checkPin(pin);
      if(checkPin){
        Future.delayed(const Duration(seconds: 3), () {
        //  show success notification
        });

        AutoRouter.of(context).push(const HomeScreen());

      } else {
        Future.delayed(const Duration(seconds: 3), () {
        //  show error notification
        });

        return;
      }
    } else {
      return;
    }
  }

  Widget pinCodeField(textFieldController, currFnode, nextFnode, c) {
    return SizedBox(
      height: 100.0,
      width: 50.0,
      child: TextField(
        focusNode: currFnode,
        onChanged: (value) {
          if (value.length == 1){
            FocusScope.of(context).requestFocus(nextFnode);
            if(currFnode==fNode_4) {
              return submitCheck(c);
            }
          }
        },
        showCursor: false,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        controller: textFieldController,
        decoration: InputDecoration(
          counter: const Offstage(),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1.0,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(0.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2.0,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    String code = p1.text + p2.text + p3.text + p4.text;
    print(code);
  }

  @override
  void dispose() {
    p1.dispose();p2.dispose();p3.dispose();p4.dispose();
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
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                pinCodeField(p1, fNode_1, fNode_2, context),
                const SizedBox(width: 5.0),
                pinCodeField(p2, fNode_2, fNode_3, context),
                const SizedBox(width: 5.0),
                pinCodeField(p3, fNode_3, fNode_4, context),
                const SizedBox(width: 5.0),
                pinCodeField(p4, fNode_4, fNode_4, context),
              ],
            ),
          ),
        )
      )
    );
  }
}
