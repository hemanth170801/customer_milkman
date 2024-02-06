import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';

class RegistrationProvider extends ChangeNotifier {
  // final userDetailsService = getIt<UserDetailsService>();
  // final navService = getIt<NavService>();
  final log = Logger('RegistrationProvider');
  //final mobCtrl = TextEditingController();

  bool get isContinueButtonVisible => mobCtrl.text.length == 10;

  bool get isLoading => _isLoading;
  final _isLoading = false;

 // RegistrationProvider(this.isEditMode);



  final bool isEditMode;
  final fNameCtrl = TextEditingController();
  final lNameCtrl = TextEditingController();
  final dobCtrl = TextEditingController();
  final mobCtrl = TextEditingController();

  DateTime? get selectedDobDate => _selectedDobDate;
  DateTime? _selectedDobDate;

  String? get pnumberErrormsg => _pnumberErrormsg;
  String? _pnumberErrormsg;

  String? get selectedGender => _selectedGender;
  String? _selectedGender;

  String? get fNameErrorMsg => _fNameErrorMsg;
  String? _fNameErrorMsg;

  String? get lNameErrorMsg => _lNameErrorMsg;
  String? _lNameErrorMsg;

  String? get dobErrorMsg => _dobErrorMsg;
  String? _dobErrorMsg;

  String? get genderErrorMsg => _genderErrorMsg;
  String? _genderErrorMsg;

  bool get isSubmittingData => _isSubmittingData;
  var _isSubmittingData = false;

  bool get isDataFetching => _isDataFetching;
  var _isDataFetching = false;

  RegistrationProvider({required this.isEditMode}) {
    if (isEditMode) {
      _fetchDetails();
    }
  }

  void clearFirstNameErrorMsg(String _) {
    if (fNameErrorMsg != null) {
      _fNameErrorMsg = null;
      notifyListeners();
    }
  }

  void clearLastNameErrorMsg(String _) {
    if (lNameErrorMsg != null) {
      _lNameErrorMsg = null;
      notifyListeners();
    }
  }
  void onMobileNumberChanged(String _) {
    if(pnumberErrormsg !=null){
      _pnumberErrormsg= null;
    }
      notifyListeners();
  }


  void pickDateOfBirth(BuildContext context) async {
    final today = DateTime.now();
    final firstDate = DateTime(today.year - 90, today.month, today.day);
    final lastDate = DateTime(today.year - 18, today.month, today.day);
    final initialDate = selectedDobDate ??
        DateTime(lastDate.year - 1, lastDate.month, lastDate.day);

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    if (picked == null) {
      return;
    }

    _selectedDobDate = picked;
    dobCtrl.text = DateFormat('dd-MMM-yyyy').format(selectedDobDate!);
    _dobErrorMsg = null;
    notifyListeners();
  }

  void selectGender(String? selectedGender) {
    if (selectedGender == null) {
      return;
    }
    _selectedGender = selectedGender;
    _genderErrorMsg = null;
    notifyListeners();
  }

  bool _validate() {
    /// First name validations
    final fName = fNameCtrl.text.trim();

    if (fName.isEmpty) {
      _fNameErrorMsg = 'Name is required';
      notifyListeners();
      return false;
    } else if (fName.length < 3) {
      _fNameErrorMsg = 'Name should be more than 2 Characters';
      notifyListeners();
      return false;
    }

    /// Last name validations
    final lName = lNameCtrl.text.trim();

    if (lName.isEmpty) {
      _lNameErrorMsg = 'Name is required';
      notifyListeners();
      return false;
    } else if (lName.length < 3) {
      _lNameErrorMsg = 'Name should be more than 2 Characters';
      notifyListeners();
      return false;
    }

    /// Date Of Birth validations
    if (selectedDobDate == null) {
      _dobErrorMsg = 'DOB is required';
      notifyListeners();
      return false;
    }

    /// Gender validations
    if (selectedGender == null) {
      _genderErrorMsg = 'Gender is required';
      notifyListeners();
      return false;
    }

    final pnumber=mobCtrl.text.trim();
    if (pnumber.isEmpty) {
      _pnumberErrormsg = 'PhoneNumber  is required';
      notifyListeners();
      return false;
    } else if (pnumber.length <10) {
      _pnumberErrormsg = 'Enter valid phone number';
      notifyListeners();
      return false;
    }


    return true;
  }

  void saveOrUpdateDetails() async {
    // _isLoading=true;
    // notifyListeners();
    final isValid = _validate();

    if (!isValid) {
      return;
    }

    // final model = UserDetailsModel(
    //   firstName: fNameCtrl.text.trim(),
    //   lastName: lNameCtrl.text.trim(),
    //   dateOfBirth: selectedDobDate!,
    //   gender: selectedGender!,
    // );

    // _isSubmittingData = true;
    // notifyListeners();

    /// Close keyboard
    //navService.nav.context.unfocus();

    // try {
    //   if (isEditMode) {
    //     await userDetailsService.update(model);
    //     log.info('User data is updated successfully');
    //     navService.nav.pop();
    //   } else {
    //     await userDetailsService.save(model);
    //     log.info('User data is saved successfully');
    //     navService.nav.pushNamedAndRemoveUntil(
    //       HomePage.routeName,
    //           (Route<dynamic> route) => false,
    //     );
    //   }
    // } catch (e, st) {
    //   log.severe('Error while Saving User details : ', e, st);
    //   _isSubmittingData = true;
    //   notifyListeners();
    //   navService.nav.context.showErrorDialog(errorMsg: e.toString());
    // }
  }

  void _fetchDetails() async {
    _isDataFetching = true;
    notifyListeners();

    // try {
    //   final model = await userDetailsService.get();
    //   log.info('User data is fetched successfully');
    //
    //   fNameCtrl.text = model.firstName;
    //   lNameCtrl.text = model.lastName;
    //   _selectedGender = model.gender;
    //   _selectedDobDate = model.dateOfBirth;
    //   dobCtrl.text = DateFormat('dd-MMM-yyyy').format(selectedDobDate!);
    //   notifyListeners();
    // } catch (e, st) {
    //   log.severe('Error while fetching User details : ', e, st);
    //   navService.nav.context.showErrorDialog(errorMsg: e.toString());
    // }

    // _isDataFetching = false;
    // notifyListeners();
  }

  @override
  void dispose() {
    fNameCtrl.dispose();
    lNameCtrl.dispose();
    dobCtrl.dispose();
    super.dispose();
  }
}
