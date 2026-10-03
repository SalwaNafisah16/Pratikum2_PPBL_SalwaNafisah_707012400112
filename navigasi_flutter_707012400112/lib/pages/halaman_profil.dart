import 'package:flutter/material.dart';
import '../navigation/app_routes.dart';

class HalamanProfil extends StatelessWidget {
  const HalamanProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const CircleAvatar(
          radius: 40,
          child: Icon(
            Icons.person,
            size: 40,
          ),
        ),
        const SizedBox(height: 16),
        const Center(
          child: Text('Salwa Nafisah'),
        ),
        const Center(
          child: Text('707012400112'),
        ),
        const SizedBox(height: 24),

        ElevatedButton.icon(
          onPressed: () => Navigator.pushNamed(
            context,
            AppRoutes.catatan,
          ),
          icon: const Icon(Icons.note_alt_outlined),
          label: const Text('Buka Halaman Catatan'),
        ),
      ],
    );
  }
}