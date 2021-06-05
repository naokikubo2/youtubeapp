import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'package:youtubeapp/main_model.dart';void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.white
      ),
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('YouTubeApp'),
          ),
          body: Consumer<MainModel>( builder: (context, model, child) {
              return Center(
                child: Column(
                  children: [
                    Text(
                        model.kboyText,
                        style: TextStyle(
                          fontSize: 30,
                        ),
                    ),
                    ElevatedButton(
                        child: Text('ボタン'),
                        onPressed: (){
                          //TODO
                          model.changeKboyText();
                        }
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}