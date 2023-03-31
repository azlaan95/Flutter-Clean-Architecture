import 'package:azl_domain/util/validation/email_validator.dart';
import 'package:azl_domain/util/validation/mobile_number_validator.dart';
import 'package:azl_domain/util/validation/name_validator.dart';
import 'package:azl_domain/util/validation/otp_validator.dart';
import 'package:azl_domain/util/validation/password_validator.dart';
import 'package:azl_domain/util/validation/referral_code_validator.dart';
import 'package:azl_domain/util/validation/validation_facade.dart';

mixin ValidatorModule {
  EmailValidator get emailValidator {
    return EmailValidator();
  }

  PasswordValidator get passwordValidator {
    return PasswordValidator();
  }

  NameValidator get nameValidator {
    return NameValidator();
  }

  MobileNumberValidator get mobileNumberValidator {
    return MobileNumberValidator();
  }

  ReferralCodeValidator get referralCodeValidator {
    return ReferralCodeValidator();
  }

  OtpValidator get otpValidator {
    return OtpValidator();
  }

  ValidationFacade get validator {
    return ValidationFacade(
      emailValidator: emailValidator,
      passwordValidator: passwordValidator,
      nameValidator: nameValidator,
      mobileNumberValidator: mobileNumberValidator,
      referralCodeValidator: referralCodeValidator,
      otpValidator: otpValidator,
    );
  }
}
