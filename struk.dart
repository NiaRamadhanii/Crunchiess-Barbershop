import 'package:flutter/material.dart';

void main() {
  runApp(const Struk());
}

class Struk extends StatelessWidget {
  const Struk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ReceiptScreen(),
      ),
    );
  }
}

class ReceiptScreen extends StatelessWidget {
  const ReceiptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 350,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo dan Nama Usaha
              Column(
                children: [
                  Image.asset(
                    'assets/images/Lo.png',
                    height: 80,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Crunchiess',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                  const Text(
                    'Jl. Line pipa Padang sakti\nNo. Telp 0812345678\n19872309673448122',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              const Divider(thickness: 1),
              // Informasi Waktu dan Nomor
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('2024-11-08\n7:27:30',
                          style: TextStyle(fontSize: 12)),
                      Text('Crunchiess', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'No. 1649821-23',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              const Divider(thickness: 1),
              // Produk dan Harga
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        '1. Paket Hemat',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        'Rp 30.000',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '1 x Rp 30.000',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              const Divider(thickness: 1),
              // Total QTY, Total, Bayar, Kembali
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Total QTY : 1', style: TextStyle(fontSize: 12)),
                  const Divider(thickness: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Total', style: TextStyle(fontSize: 12)),
                      Text('Rp 30.000', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Bayar Cash', style: TextStyle(fontSize: 12)),
                      Text('Rp 50.000', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Kembali', style: TextStyle(fontSize: 12)),
                      Text('Rp 20.000', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ),
              const Divider(thickness: 1),
              const SizedBox(height: 8),
              // Footer
              const Text(
                'Terimakasih Telah Berbelanja',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
