import 'package:flutter/material.dart';
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
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.3,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Theme.of(context).colorScheme.inversePrimary,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5.0,
                              blurRadius: 7.0,
                              offset: const Offset(0.0, 3.0)
                            )
                          ]
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 30, 10, 30),
                                      child: Image.network(
                                        'https://pngimg.com/d/mazda_PNG86.png'
                                      ),
                                    )
                                  ),
                                  const Expanded(
                                    flex: 1,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text(
                                          "Rose",
                                          style: TextStyle(
                                            fontSize: 25,
                                          )
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ),
                            const Expanded(
                              flex: 1, 
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text("35.000 km"),
                                    )
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text("225 lt di benzina"),
                                    )
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text("27.243 €"),
                                    )
                                  ),
                                ],
                              )
                            )
                          ],
                        )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height*0.1,
                    width: MediaQuery.of(context).size.width-10,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.transparent,
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Icon(FontAwesomeIcons.gasPump)
                          ),
                          Expanded(
                              flex: 4,
                              child: Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Benzina 10 lt",
                                        style: TextStyle(
                                            fontSize: 15
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text("10 €")
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height*0.1,
                    width: MediaQuery.of(context).size.width-10,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Theme.of(context).colorScheme.inversePrimary,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5.0,
                                blurRadius: 7.0,
                                offset: const Offset(0.0, 3.0)
                            )
                          ]
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Icon(FontAwesomeIcons.wrench)
                          ),
                          Expanded(
                              flex: 4,
                              child: Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Tagliando",
                                        style: TextStyle(
                                            fontSize: 15
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text("346 €")
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height*0.1,
                    width: MediaQuery.of(context).size.width-10,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Theme.of(context).colorScheme.inversePrimary,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5.0,
                                blurRadius: 7.0,
                                offset: const Offset(0.0, 3.0)
                            )
                          ]
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Icon(FontAwesomeIcons.moneyBill)
                          ),
                          Expanded(
                              flex: 4,
                              child: Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Tagliando",
                                        style: TextStyle(
                                            fontSize: 15
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text("346 €")
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height*0.1,
                    width: MediaQuery.of(context).size.width-10,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Theme.of(context).colorScheme.inversePrimary,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5.0,
                                blurRadius: 7.0,
                                offset: const Offset(0.0, 3.0)
                            )
                          ]
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Icon(FontAwesomeIcons.wrench)
                          ),
                          Expanded(
                              flex: 4,
                              child: Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Tagliando",
                                        style: TextStyle(
                                            fontSize: 15
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text("346 €")
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height*0.1,
                    width: MediaQuery.of(context).size.width-10,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Theme.of(context).colorScheme.inversePrimary,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5.0,
                                blurRadius: 7.0,
                                offset: const Offset(0.0, 3.0)
                            )
                          ]
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Icon(FontAwesomeIcons.wrench)
                          ),
                          Expanded(
                              flex: 4,
                              child: Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Tagliando",
                                        style: TextStyle(
                                            fontSize: 15
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text("346 €")
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height*0.1,
                    width: MediaQuery.of(context).size.width-10,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Theme.of(context).colorScheme.inversePrimary,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5.0,
                                blurRadius: 7.0,
                                offset: const Offset(0.0, 3.0)
                            )
                          ]
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Icon(FontAwesomeIcons.wrench)
                          ),
                          Expanded(
                              flex: 4,
                              child: Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Tagliando",
                                        style: TextStyle(
                                            fontSize: 15
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text("346 €")
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height*0.1,
                    width: MediaQuery.of(context).size.width-10,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Theme.of(context).colorScheme.inversePrimary,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5.0,
                                blurRadius: 7.0,
                                offset: const Offset(0.0, 3.0)
                            )
                          ]
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Icon(FontAwesomeIcons.wrench)
                          ),
                          Expanded(
                              flex: 4,
                              child: Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Tagliando",
                                        style: TextStyle(
                                            fontSize: 15
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text("346 €")
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height*0.1,
                    width: MediaQuery.of(context).size.width-10,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Theme.of(context).colorScheme.inversePrimary,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5.0,
                                blurRadius: 7.0,
                                offset: const Offset(0.0, 3.0)
                            )
                          ]
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Icon(FontAwesomeIcons.wrench)
                          ),
                          Expanded(
                              flex: 4,
                              child: Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Tagliando",
                                        style: TextStyle(
                                            fontSize: 15
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text("346 €")
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
