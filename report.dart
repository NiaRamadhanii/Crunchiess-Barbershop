import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LaporanPage(),
    );
  }
}

class LaporanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Laporan Transaksi per Tahun'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Grafik
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GrafikCard(title: 'Grafik Transaksi'),
                GrafikCard(title: 'Grafik Keuntungan'),
                GrafikCard(title: 'Grafik Pendapatan'),
              ],
            ),

            SizedBox(height: 16),

            // Tabel data
            Expanded(
              child: SingleChildScrollView(
                child: DataTableWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GrafikCard extends StatelessWidget {
  final String title;

  const GrafikCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Colors.brown[200],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                '$title\nper Tahun',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              AspectRatio(
                aspectRatio: 1.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DataTableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Laporan Transaksi per Tahun',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  DataColumn(label: Text('Tanggal')),
                  DataColumn(label: Text('Jumlah Transaksi')),
                  DataColumn(label: Text('Jumlah Pendapatan')),
                  DataColumn(label: Text('Keuntungan')),
                  DataColumn(label: Text('Aksi')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('2024')),
                    DataCell(Text('37')),
                    DataCell(Text('Rp 8.850.000,00')),
                    DataCell(Text('Rp 2.000,00')),
                    DataCell(Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.visibility, color: Colors.green),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.download, color: Colors.red),
                        ),
                      ],
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2023')),
                    DataCell(Text('174')),
                    DataCell(Text('Rp 10.000,00')),
                    DataCell(Text('Rp 1.000,00')),
                    DataCell(Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.visibility, color: Colors.green),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.download, color: Colors.red),
                        ),
                      ],
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2022')),
                    DataCell(Text('200')),
                    DataCell(Text('Rp 20.000,00')),
                    DataCell(Text('Rp 2.500,00')),
                    DataCell(Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.visibility, color: Colors.green),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.download, color: Colors.red),
                        ),
                      ],
                    )),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
