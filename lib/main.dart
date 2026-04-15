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
                    'DIREKTORAT POLITEKNIK NEGERI INDRAMAYU',
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
          'Gedung Rektorat Politeknik Negeri Indramayu (Polindra) merupakan pusat '
          'kegiatan administrasi dan manajemen kampus. Gedung ini menjadi tempat '
          'berlangsungnya berbagai aktivitas penting seperti pelayanan akademik, '
          'pengelolaan data mahasiswa, serta koordinasi antar pimpinan dan staf. '
          'Dengan desain yang modern dan lingkungan yang tertata rapi, gedung ini '
          'memberikan suasana yang nyaman bagi mahasiswa maupun pengunjung. '
          'Sebagai pusat operasional kampus, Gedung Rektorat Polindra memiliki '
          'peran penting dalam mendukung kelancaran seluruh kegiatan akademik '
          'dan non-akademik di lingkungan kampus.',
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
              'images/fotorektorat.png', // pastikan ada di folder images
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