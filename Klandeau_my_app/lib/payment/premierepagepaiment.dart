import 'package:flutter/material.dart';
import 'package:klandeau_my_app/payment//server_stub.dart';

class Pagepaiment extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            final sessionId = await Server().createCheckout();
            final snackbar = SnackBar(content: Text('SessionId: $sessionId'));
            Scaffold.of(context).showSnackBar(snackbar);
          },
          child: Text('Stripe Checkout in Flutter!'),
        ),
      ),
    );
  }
}
