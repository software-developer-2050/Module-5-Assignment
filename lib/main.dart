import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Profile',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7FF),

      appBar: AppBar(
        backgroundColor: const Color(0xFFFFC107),
        elevation: 0,

        title: const Text(
          'My Profile',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black87,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              size: 30,
              color: Colors.black87,
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              size: 27,
              color: Colors.black87,
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.phone,
              size: 27,
              color: Colors.black87,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 10),

              // First circular icon
              _buildCircleIcon(
                icon: Icons.icecream,
              ),

              const SizedBox(height: 15),

              const Text(
                'Ice cream is very delicious right?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 50),

              // Second circular icon
              _buildCircleIcon(
                icon: Icons.code,
              ),

              const SizedBox(height: 15),

              const Text(
                'Programming is not boring if you love it',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCircleIcon({
    required IconData icon,
  }) {
    return Container(
      width: 195,
      height: 195,
      decoration: const BoxDecoration(
        color: Color(0xFFE7D8FF),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          icon,
          size: 85,
          color: Color(0xFF24005C),
        ),
      ),
    );
  }
}