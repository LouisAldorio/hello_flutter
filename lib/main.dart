import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: ListView(
              children: [
                Text(
                  "Louis Aldorio Efendi",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.grey[600],
                    fontFamily: "IndieFlower",
                  ),
                ),
                Image.network("https://images.unsplash.com/photo-1574539602047-548bf9557352?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80"),
                Image.asset("assets/3.png"),
                Icon(
                  Icons.airport_shuttle,
                  color: Colors.lightBlue,
                  size: 50,
                ),
                ElevatedButton(
                  onPressed: () => {
                    print("You Click me")
                  },
                  child: Text("Click Me"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () => {
                    print("You Click me")
                  },
                  // child: Text("Click Me"), // no child in icon button
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.amber)
                  ),
                  icon: Icon(
                    Icons.mail
                  ),
                  label: Text("Mail me"),

                ),
                TextButton(
                  onPressed: () => {
                    print("You Click me")
                  },
                  child: Text("Click Me"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                ),
                IconButton(
                  onPressed: () => {
                    print("You Click me")
                  },
                  icon: Icon(Icons.alternate_email),
                ),
                Container(
                  color: Colors.grey[400],
                  child: Text("Hello"),
                  padding: EdgeInsets.fromLTRB(50, 30, 20, 10),
                  margin: EdgeInsets.all(30.0),
                ),
                Padding(
                  padding: EdgeInsets.all(50),
                  child: Text("Hello"),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start, // alight-items
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // alignment equal with flex box (justify content)
                  children: <Widget>[
                    Text("Hello World"),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () => {

                      },
                      child: Text("Click Me"),
                    ),
                    Container(
                      color: Colors.cyan,
                      padding: EdgeInsets.all(30.0),
                      child: Text("Inside Container"),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text("Hello"),
                        Text("World")
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      color: Colors.cyan,
                      child: Text("one"),
                    ),
                    Container(
                      padding: EdgeInsets.all(30.0),
                      color: Colors.red,
                      child: Text("two"),
                    ),
                    Container(
                      padding: EdgeInsets.all(40.0),
                      color: Colors.pink,
                      child: Text("three"),
                    )
                  ],
                ),
                Row( // flexbox example keyword (expanded (taking whole space available))
                  children: [
                    Expanded(
                        child: Image.asset("assets/2.png"),
                      flex: 2,
                    ),
                    Expanded(
                      flex: 2, // similiar to flexBasis or layout_wight in kotlin
                      child: Container(
                        padding: EdgeInsets.all(30.0),
                        color: Colors.cyan,
                        child: Text("1")
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.all(30.0),
                        color: Colors.pinkAccent,
                        child: Text("2")
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(30.0),
                        color: Colors.amber,
                        child: Text("3")
                      ),
                    )
                  ],
                )
              ],
            ),
        ),
      floatingActionButton: FloatingActionButton(
        child: Text("Click"),
        backgroundColor: Colors.red[600],
        onPressed: () => {

        },
      ),
    );
  }
}



