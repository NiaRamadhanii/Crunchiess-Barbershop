import 'package:flutter/material.dart';
import 'package:crunchiess_barbershop/loginpage.dart';

void main() {
  runApp(const SplashPage());
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()), // Halaman login
      );
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF7D6F66), // Warna coklat
                Color(0xFFFFFF99), // Warna kuning terang
                Color(0xFF7D6F66), // Warna coklat
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Center(
            child: LayoutBuilder(
              builder: (context, constraints) {
                double imageSize = constraints.maxWidth > 600
                    ? 300
                    : 200; // Responsif berdasarkan ukuran layar
                return Image.asset(
                  ('assets/images/LOGO.png'), // Ganti path ke lokasi gambar Anda
                  width: imageSize,
                  height: imageSize,
                  fit: BoxFit.contain,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
