import 'package:flutter/material.dart';
import 'package:car_expenses/components/card_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.light
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  child:  CardWidget(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Rose",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        )
                      ),
                    )
                  ),
                  height: MediaQuery.of(context).size.height*0.05,
                ),
                const SizedBox(height: 10.0,),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        child: CardWidget(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.network(
                              'https://pngimg.com/d/mazda_PNG86.png'
                            ),
                          )
                        ),
                        height: MediaQuery.of(context).size.height*0.17,
                      ),
                    ),
                    const SizedBox(width: 10.0,),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          SizedBox(
                            child: CardWidget(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.ruler),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text("10.000 km")
                                      )
                                    )
                                  ],
                                ),
                              )
                            ),
                            height: MediaQuery.of(context).size.height*0.05,
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                          SizedBox(
                            child: CardWidget(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.gasPump),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text("345 lt")
                                      )
                                    )
                                  ],
                                ),
                              )
                            ),
                            height: MediaQuery.of(context).size.height*0.05,
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                          SizedBox(
                            child: CardWidget(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.moneyBill),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text("17.983 €")
                                      )
                                    )
                                  ],
                                ),
                              )
                            ),
                            height: MediaQuery.of(context).size.height*0.05,
                          ),
                        ],
                      )
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
