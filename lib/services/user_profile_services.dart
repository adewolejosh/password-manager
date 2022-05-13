
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';


class UserProfileServices extends ChangeNotifier {
	final profileBox =  Hive.box('profile');

	String get name => profileBox.get('first_name') + " " + profileBox.get('last_name');
	String get firstName => profileBox.get('first_name');
	String get lastName => profileBox.get('last_name');
	String get email => profileBox.get('email');

	void createProfile(fn, ln, em, pin) async {
		await profileBox.put('first_name', fn);
		await profileBox.put('last_name', ln);
		await profileBox.put('email', em);
		await profileBox.put('is_active', true);
		await profileBox.put('pin_code', pin);

		notifyListeners();
	}

	void updateProfile(fn, ln, em) async {
		await profileBox.put('first_name', fn);
		await profileBox.put('last_name', ln);
		await profileBox.put('email', em);

		notifyListeners();
	}

	Future<bool> checkPin(pin) async{
		var pinCode = await profileBox.get('pin_code');
		if(pin == pinCode) {
			return true;
		} else {
			return false;
		}
	}

}
