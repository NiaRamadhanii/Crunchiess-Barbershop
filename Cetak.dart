import 'package:flutter/material.dart';
import 'package:flutter_application_1/content/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PrintPage(),
    );
  }
}

class PrintPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cetak'),
        backgroundColor: Colors.grey[200],
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cetak',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '1 Lembar Kertas',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 8),
            buildDropdownField('Tujuan', 'EPSON L1300'),
            SizedBox(height: 4), // Tambahan jarak lebih kecil
            buildDropdownField('Halaman', 'All Pages'),
            SizedBox(height: 4),
            buildTextField('Salinan', '1'),
            SizedBox(height: 4),
            buildDropdownField('Tata Letak', 'Potret'),
            SizedBox(height: 12), // Jarak lebih besar untuk pembatas
            Text(
              'Setelan Lainnya',
              style: TextStyle(fontSize: 16),
            ),
            Icon(Icons.expand_more),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  ),
                  child: Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  ),
                  child: Text('Cetak'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDropdownField(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0), // Padding lebih kecil
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 16),
          ),
          DropdownButton<String>(
            value: value,
            items: [DropdownMenuItem(value: value, child: Text(value))],
            onChanged: (newValue) {},
          ),
        ],
      ),
    );
  }

  Widget buildTextField(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0), // Padding lebih kecil
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            width: 100,
            child: TextField(
              controller: TextEditingController(text: value),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                    vertical: 8.0), // Jarak internal lebih kecil
                border: OutlineInputBorder(),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
