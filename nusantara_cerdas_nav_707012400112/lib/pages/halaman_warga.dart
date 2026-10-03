import 'package:flutter/material.dart';
import '../navigation/app_routes.dart';

class HalamanWarga extends StatelessWidget {
  const HalamanWarga({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const CircleAvatar(
          radius: 45,
          child: Icon(
            Icons.person,
            size: 45,
          ),
        ),
        const SizedBox(height: 16),
        const Center(
          child: Text(
            'Nama Warga',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Center(
          child: Text('NIK: 3200000000000000'),
        ),
        const SizedBox(height: 24),

        Card(
          child: ListTile(
            leading: const Icon(Icons.history),
            title: const Text('Riwayat Laporan'),
            subtitle: const Text(
              'Lihat riwayat laporan warga',
            ),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRoutes.riwayat,
              );
            },
          ),
        ),
      ],
    );
  }
}