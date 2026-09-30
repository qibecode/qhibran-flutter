import 'package:flutter/material.dart';
import 'package:flutter_app3/widgets/app_footer.dart';

class DataSekolah extends StatelessWidget {
  const DataSekolah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Sekolah"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orange,
        titleTextStyle:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        shadowColor: Colors.black,
        elevation: 10,
      ),
      bottomNavigationBar: const AppFooter(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Center(
              child: Text(
                "Data Sekolah",
                style: TextStyle(
                  color: Color.fromARGB(255, 8, 8, 8),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "NPSN",
                      hintText: "Masukan NPSN",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nama Sekolah",
                      hintText: "Masuka2n Nama Sekolah",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Alamat",
                      hintText: "Masukan Alamat",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "No Telp",
                      hintText: "Masukan No Telp",
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: const Size(150, 40),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Simpan",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: const Size(150, 40),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/beranda");
                  },
                  child: const Text(
                    "Selesai",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
