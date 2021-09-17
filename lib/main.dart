import 'dart:ui';
import 'package:ausgabenplaner/widget/newtransaction.dart';
import 'package:ausgabenplaner/widget/user_transaction.dart';
import 'package:intl/intl.dart';
import 'package:ausgabenplaner/ads/ads.dart';
import 'package:ausgabenplaner/model/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  AdmobHelper.initialization();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
//String titleInput;
//String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Ausgaben Tracker")),
        elevation: 9,
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                elevation: 9,
                child: Text("Text"),
              ),
            ),
            UserTransaction(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: 60,
          color: Colors.black,
          child: AdWidget(
            ad: AdmobHelper.getBannerAd()..load(),
            key: UniqueKey(),
          )),
    );
  }
}
