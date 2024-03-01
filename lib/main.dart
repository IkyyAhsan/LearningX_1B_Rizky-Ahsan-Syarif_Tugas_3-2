import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'NEW RECIPE',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text('Close', style: TextStyle(color: Colors.red)),
              ),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 75,
              color: Colors.red,
              child: const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        "Super cool! you are creating a new recipe!\nLet's get started",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Give your recipe a name",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      style: TextStyle(height: 2),
                      decoration: InputDecoration(
                        hintText: 'Masukkan Nama Menu',
                        hintStyle: TextStyle(fontSize: 14), // Set font size for hint text
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 30),
            const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Estimasi waktu memasak (menit)",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Masukkan waktu pembuatan',
                        hintStyle: TextStyle(fontSize: 14), // Set font size for hint text
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 30),
            const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Deskripsi",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      style: TextStyle(height: 5),
                      decoration: InputDecoration(
                        hintText: 'Masukkan Deskripsi',
                        hintStyle: TextStyle(fontSize: 14), // Set font size for hint text
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 30),
            Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Resep, bahan dan langkah",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const TextField(
                      style: TextStyle(height: 5),
                      decoration: InputDecoration(
                        hintText: 'Masukkan Resep dan Cara Pembuatan',
                        hintStyle: TextStyle(fontSize: 14), // Set font size for hint text
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: const Text('Add Menu', style: TextStyle(color: Colors.white, fontSize: 15)),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}