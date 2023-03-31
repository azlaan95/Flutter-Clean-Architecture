import 'package:easy_localization/easy_localization.dart';

extension CurrencyFormatter on double {
  String toRupee() {
    final format = NumberFormat.currency(
      name: "INR",
      locale: "en_IN",
      symbol: "",
    );

    return format.format(this);
  }
}
