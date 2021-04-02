import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: PageOne(),
    ),
  );
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Strona 1"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: Text("Czerwony"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageTwo(1),
                  ),
                ).then((value) => print(value));
              },
            ),
            TextButton(
              child: Text("Niebieski"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageTwo(2),
                  ),
                ).then((value) => print(value));
              },
            ),
            TextButton(
              child: Text("żółty"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageTwo(3),
                  ),
                ).then((value) => print(value));
              },
            ),
          ],
        ),
      ),
    );
  }
}
class PageTwo extends StatelessWidget {
  final int Color;
  PageTwo(this.Color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Strona 2"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: Text("Wróć"),
              onPressed: () {
                Navigator.pop(context, 6);
              },
            ),
            TextButton(
              child: Text("Idź do Strona 3"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => PageThree(3),
                )
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
class PageThree extends StatelessWidget {
  final int Color;
  PageThree(this.Color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Strona 3"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: Text("Wróć"),
              onPressed: () {
                Navigator.pop(context, 6);
              },
            ),
          ],
        ),
      ),
    );
  }
}


