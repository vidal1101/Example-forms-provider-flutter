import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:exampleformsprovider/forms/form_user.dart';
import 'package:exampleformsprovider/pages/homepage.dart';
import 'package:exampleformsprovider/pages/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) =>  FormUser(),),
        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: 
        initialRoute: 'home',
        routes: {
          'home'    :(_) => HomePage(),
          'second' :(_) => SecondPage(),
        },
      ),
    );
  }
}

