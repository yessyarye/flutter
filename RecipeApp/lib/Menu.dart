import 'package:flutter/material.dart';
import 'package:receipeapp/detail_resep.dart';
import 'resep.dart';

void main() {
  runApp(const appResep());
}

class appResep extends StatelessWidget {
  const appResep({Key? key}) : super(key: key);
  static const MaterialColor white = MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Penghitung Resep',
      theme: ThemeData(
        primarySwatch: white,
      ),
      home: const MyHomePage(title: 'Penghitung Resep'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Resep.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return DetailResep(resep: Resep.samples[index]);
                    },
                    ),
                    );
              },
              child: buildResepCard(Resep.samples[index]),
            );
          },
        ),
      ),
    );
  }
}

Widget buildResepCard(Resep resep) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image(
            image: AssetImage(resep.imageUrl),
            fit: BoxFit.cover, // Menyesuaikan gambar ke dalam ruang yang tersedia
            width: 400.0, // Mengatur lebar gambar agar memenuhi lebar layar
            height: 500.0, // Mengatur tinggi gambar agar tetap konsisten
          ),
          const SizedBox(
            height: 14.0,
          ),
          Text(
            resep.label,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palationo',
            ),
          ),
        ],
      ),
    ),
  );
}
