import 'package:flutter/material.dart';
import 'package:pay/pay.dart';

class GooglePayButtonPayment extends StatefulWidget {
  GooglePayButtonPayment({Key? key}) : super(key: key);

  @override
  State<GooglePayButtonPayment> createState() => _GooglePayButtonStatePayment();
}

class _GooglePayButtonStatePayment extends State<GooglePayButtonPayment> {
  final _paymentItems = [
    PaymentItem(
      label: 'Total',
      amount: '99.99',
      status: PaymentItemStatus.final_price,
    )
  ];
  void onGooglePayResult(paymentResult) {
    // Send the resulting Google Pay token to your server / PSP
    debugPrint(paymentResult.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GooglePayButton(
            height: 100,
            width: 200,
            paymentConfigurationAsset: 'gpay.json',
            paymentItems: _paymentItems,
            style: GooglePayButtonStyle.black,
            type: GooglePayButtonType.pay,
            margin: const EdgeInsets.only(top: 15.0),
            onPaymentResult: onGooglePayResult,
            loadingIndicator: const Center(
              child: CircularProgressIndicator(),
            ),
          )
        ],
      )),
    );
  }
}
