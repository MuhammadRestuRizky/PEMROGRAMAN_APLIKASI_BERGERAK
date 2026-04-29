import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout',
      debugShowCheckedModeBanner: false,

      // ✅ TAMBAHAN DI SINI (BIAR APPBAR BIRU)
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),

      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    FasilitasPage(),
    ProgramStudiPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.apartment),
            label: 'Fasilitas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Program Studi',
          ),
        ],
      ),
    );
  }
}

class FasilitasPage extends StatelessWidget {
  const FasilitasPage({super.key});

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
    Color color = Colors.blue;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fasilitas Polindra'),
      ),
      body: ListView(
        children: [
          Container(
            height: 250,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.asset('images/kosong.png', fit: BoxFit.contain),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.asset('images/fotorestu.jpeg', fit: BoxFit.contain),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.asset('images/kosong1.png', fit: BoxFit.contain),
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(32),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Warung Jati Sebelah Rektorat Polindra',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Kampus Polindra, Indramayu, Jawa Barat, Indonesia',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.star, color: Colors.red),
                const Text('41'),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButtonColumn(color, Icons.call, 'CALL'),
              _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
              _buildButtonColumn(color, Icons.share, 'SHARE'),
            ],
          ),

          Container(
            padding: const EdgeInsets.all(32),
            child: const Text(
              'Warung Jati yang berada di sebelah Gedung Rektorat Politeknik Negeri '
              'Indramayu (Polindra) merupakan salah satu area favorit mahasiswa untuk '
              'beristirahat dan berkumpul. Tempat ini dikelilingi oleh pepohonan jati '
              'yang rindang sehingga menciptakan suasana yang sejuk dan nyaman.',
            ),
          ),
        ],
      ),
    );
  }
}

class ProgramStudiPage extends StatelessWidget {
  const ProgramStudiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> prodi = [
      'D3 Teknik Informatika',
      'D3 Teknik Mesin',
      'D3 Keperawatan',
      'D3 Teknik Pendingin dan Tata Udara',
      'S1 Terapan Perancangan Manufaktur',
      'S1 Terapan Sistem Informasi Kota Cerdas',
      'S1 Terapan Teknologi Rekayasa komputer',
      'S1 Terapan Teknologi Rekayasa Elektro Medis',
      'S1 Terapan Teknologi Rekayasa Material Maju',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Program Studi'),
      ),
      body: ListView.builder(
        itemCount: prodi.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(Icons.school),
              title: Text(prodi[index]),
              subtitle: const Text('Ketuk untuk melihat detail'),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      ),
    );
  }
}