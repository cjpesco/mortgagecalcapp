import 'package:flutter/material.dart';

import 'package:mortgagecalcapp/ui/mortgage_app_page.dart';

class MortgageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mortgage Payments"),
      ),
      body: MortgageAppPage(),
    );
  }
}
