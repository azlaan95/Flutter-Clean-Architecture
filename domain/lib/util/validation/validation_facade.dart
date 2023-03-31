import 'package:azl_domain/util/validation/email_validator.dart';
import 'package:azl_domain/util/validation/mobile_number_validator.dart';
import 'package:azl_domain/util/validation/name_validator.dart';
import 'package:azl_domain/util/validation/otp_validator.dart';
import 'package:azl_domain/util/validation/password_validator.dart';
import 'package:azl_domain/util/validation/referral_code_validator.dart';
import 'package:azl_domain/util/validation/validation_facade_type.dart';

class ValidationFacade implements ValidationFacadeType {
  final EmailValidator emailValidator;
  final PasswordValidator passwordValidator;
  final NameValidator nameValidator;
  final OtpValidator otpValidator;
  final MobileNumberValidator mobileNumberValidator;
  final ReferralCodeValidator referralCodeValidator;

  const ValidationFacade({
    required this.emailValidator,
    required this.passwordValidator,
    required this.nameValidator,
    required this.mobileNumberValidator,
    required this.referralCodeValidator,
    required this.otpValidator,
  });

  @override
  bool isEmailValid(String email) {
    return emailValidator.isValid(email);
  }

  @override
  bool isPasswordTooShort(String password) {
    return passwordValidator.isTooShort(password);
  }

  @override
  bool isPasswordNumberSequence(String password) {
    return passwordValidator.isNumberSequence(password);
  }

  @override
  bool hasConsecutiveRepeatingCharsInPassword(String password) {
    return passwordValidator.hasConsecutiveRepeatingChars(password);
  }

  @override
  bool isNameValid(String name) {
    return nameValidator.isValid(name);
  }

  @override
  bool isOtpValid(String otp) {
    return otpValidator.isValid(otp);
  }

  @override
  bool isMobileNumberValid(String mobile) {
    return mobileNumberValidator.isValid(mobile);
  }

  @override
  bool isReferralCodeValid(String referralCode) {
    return referralCodeValidator.isValid(referralCode);
  }
}
