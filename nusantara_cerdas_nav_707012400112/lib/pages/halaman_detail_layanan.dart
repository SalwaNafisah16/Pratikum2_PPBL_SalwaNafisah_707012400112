import 'package:flutter/material.dart';

class HalamanDetailLayanan extends StatelessWidget {
  const HalamanDetailLayanan({
    super.key,
    required this.data,
  });

  final Map<String, String> data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data['nama']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data['nama']!,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Dinas Penanggung Jawab',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(data['dinas']!),

            const SizedBox(height: 16),

            const Text(
              'Jam Operasional',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(data['jam']!),

            const SizedBox(height: 16),

            const Text(
              'Keterangan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(data['keterangan']!),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(
                    context,
                    'Permohonan ${data['Salwa Nafisah']} telah diajukan.',
                  );
                },
                icon: const Icon(Icons.send),
                label: const Text(
                  'Ajukan Permohonan',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}