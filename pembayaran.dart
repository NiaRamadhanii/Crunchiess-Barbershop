import 'package:flutter/material.dart';
import 'package:flutter_application_1/content/Berhasil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentScreen(),
    );
  }
}

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transaksi Pembayaran',
          style: TextStyle(color: Colors.grey),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.grey),
      ),
      body: Column(
        children: [
          // Header Section
          Container(
            color: Colors.grey[300],
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // Navigasi kembali
                  },
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back, color: Colors.grey[700]),
                      const SizedBox(width: 8),
                      // Text(
                      //   'Kembali',
                      //   style: TextStyle(color: Colors.grey[700]),
                      // ),
                    ],
                  ),
                ),
                const Text(
                  'Total : Rp 105.000',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Main Content
          Expanded(
            child: Row(
              children: [
                // Left Section
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Rp 110.000',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Keterangan',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        const Text('Disc: 0%    Metode: Cash'),
                        const SizedBox(height: 16),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            PaymentButton(
                                label: 'Uang Pas', color: Colors.green),
                            PaymentButton(
                                label: 'Rp 10.000', color: Colors.green),
                            PaymentButton(
                                label: 'Rp 20.000', color: Colors.green),
                            PaymentButton(
                                label: 'Rp 50.000', color: Colors.green),
                            PaymentButton(
                                label: 'Rp 100.000', color: Colors.green),
                            PaymentButton(
                                label: 'Lainnya', color: Colors.green),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Right Section
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.grey[200],
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        // Numeric Pad
                        Expanded(
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                            ),
                            itemCount: 12,
                            itemBuilder: (context, index) {
                              if (index == 9) {
                                return NumericButton(
                                  label: '000',
                                  onPressed: () {},
                                );
                              } else if (index == 10) {
                                return NumericButton(
                                  label: '0',
                                  onPressed: () {},
                                );
                              } else if (index == 11) {
                                return NumericButton(
                                  label: '.',
                                  onPressed: () {},
                                );
                              }
                              return NumericButton(
                                label: '${index + 1}',
                                onPressed: () {},
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 8),
                        // Complete Button
                        ElevatedButton(
                          onPressed: () {
                            // Navigasi ke halaman berhasil
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Finalizer()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            minimumSize: const Size(double.infinity, 48),
                          ),
                          child: Text('Selesai'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentButton extends StatelessWidget {
  final String label;
  final Color color;

  const PaymentButton({super.key, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: const Size(100, 40),
      ),
      child: Text(label),
    );
  }
}

class NumericButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const NumericButton(
      {super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(50, 50), // Ukuran tombol (Width x Height)
        backgroundColor: Colors.white, // Warna tombol
        foregroundColor: Colors.black, // Warna teks
        elevation: 1, // Bayangan tombol
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Sudut tombol (8 px)
        ),
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: 24), // Ukuran teks
      ),
    );
  }
}
