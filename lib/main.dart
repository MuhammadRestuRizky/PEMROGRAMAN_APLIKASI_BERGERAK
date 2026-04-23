import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TITLE SECTION
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Warung Jati Sebelah Rektorat Polindra',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Kampus Polindra, Indramayu, Jawa Barat, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    // BUTTON SECTION
    Color color = Colors.blue;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

  // TEXT SECTION
Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Warung Jati yang berada di sebelah Gedung Rektorat Politeknik Negeri '
    'Indramayu (Polindra) merupakan salah satu area favorit mahasiswa untuk '
    'beristirahat dan berkumpul. Tempat ini dikelilingi oleh pepohonan jati '
    'yang rindang sehingga menciptakan suasana yang sejuk dan nyaman. '
    'Tersedia berbagai tempat duduk seperti meja dan bangku kayu yang '
    'digunakan pengunjung untuk makan, berdiskusi, maupun sekadar bersantai. '
    'Di area ini juga terdapat warung yang menyediakan makanan dan minuman, '
    'menjadikannya sebagai pusat aktivitas santai di lingkungan kampus. '
    'Dengan suasana alami dan terbuka, Warung Jati menjadi tempat yang cocok '
    'bagi mahasiswa untuk melepas penat setelah kegiatan perkuliahan.',
    softWrap: true,
  ),
);

    // MAIN APP
    return MaterialApp(
      title: 'Flutter Layout',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tugas Selama Masa Online UTBK (Segala Tempat DiPolindra)'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/fotorestu.jpeg', // pastikan ada di folder images
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}