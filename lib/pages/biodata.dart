import "package:flutter/material.dart";
import "package:flutter_app3/widgets/app_footer.dart";

class Biodata extends StatelessWidget {
  const Biodata({super.key});

  Widget _fotoFrame(String path) {
    return Container(
      width: 80,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(9),
        child: Image.asset(
          path,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mobile App Class",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 247, 137, 3),
        shadowColor: Colors.black,
        elevation: 10,
      ),
      bottomNavigationBar: const AppFooter(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 30),
            Image.asset('images/logo.png'),
            const Text(
              "Biodata",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Serif",
                height: 1.5,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _fotoFrame("images/gambar1.jpg"),
                _fotoFrame("images/gambar2.jpg"),
                _fotoFrame("images/gambar3.jpg"),
                _fotoFrame("images/gambar4.jpg"),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _fotoFrame("images/gambar5.jpg"),
                _fotoFrame("images/gambar6.jpg"),
                _fotoFrame("images/gambar7.jpg"),
                _fotoFrame("images/gambar8.jpg"),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
