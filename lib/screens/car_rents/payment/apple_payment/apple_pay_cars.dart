import 'package:flutter/material.dart';
import 'package:pay/pay.dart';

class ApplePayment extends StatefulWidget {
  ApplePayment({Key? key}) : super(key: key);

  @override
  State<ApplePayment> createState() => _ApplePaymentState();
}

class _ApplePaymentState extends State<ApplePayment> {
  final _paymentItems = [
    PaymentItem(
      label: 'Total',
      amount: '99.99',
      status: PaymentItemStatus.final_price,
    )
  ];

  void onApplePayResult(paymentResult) {
    // Send the resulting Google Pay token to your server / PSP
    debugPrint(paymentResult.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          ApplePayButton(
            paymentConfigurationAsset: 'applepay.json',
            paymentItems: _paymentItems,
            style: ApplePayButtonStyle.black,
            type: ApplePayButtonType.buy,
            margin: const EdgeInsets.only(top: 15.0),
            onPaymentResult: onApplePayResult,
            loadingIndicator: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ]),
      ),
    );
  }
}
