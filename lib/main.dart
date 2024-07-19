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
                Row(
                  children: [
                    Expanded(
                      child: CardWidget(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Rose",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      )
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.network(
                            'https://pngimg.com/d/mazda_PNG86.png'
                          ),
                        ),
                      )
                    ),
                    const SizedBox(width: 10,),
                    const Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          CardWidget(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: FaIcon(FontAwesomeIcons.ruler)
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      "10.000 km",
                                      textAlign: TextAlign.end,
                                    )
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          CardWidget(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: FaIcon(FontAwesomeIcons.gasPump)
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      "323 lt",
                                      textAlign: TextAlign.end,
                                    )
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          CardWidget(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: FaIcon(FontAwesomeIcons.moneyBill)
                                  ),
                                  Expanded(
                                      flex: 3,
                                      child: Text(
                                        "27.248 €",
                                        textAlign: TextAlign.end,
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    )
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
