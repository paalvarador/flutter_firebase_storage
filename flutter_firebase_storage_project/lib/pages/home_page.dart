import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.blue[400],
            margin: const EdgeInsets.all(10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text("Obtener Fotogracia")),
              ElevatedButton(
                  onPressed: () {}, child: const Text("Subir a Firebase")),
            ],
          )
        ],
      ),
    );
  }
}
