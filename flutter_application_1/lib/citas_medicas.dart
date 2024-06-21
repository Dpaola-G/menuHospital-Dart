import 'package:flutter/material.dart';

class CitasMedicasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Citas Médicas'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: citasMedicas.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: Icon(
                      citasMedicas[index]['icon'],
                      color: Colors.orange,
                    ),
                    title: Text(
                      citasMedicas[index]['nombre'],
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      
                    },
                  ),
                ),
                Divider(), // este creaun espacio entre cada elemento
              ],
            );
          },
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> citasMedicas = [
  {'nombre': 'Medicina General', 'icon': Icons.local_hospital},
  {'nombre': 'Odontología', 'icon': Icons.medical_services},  {'nombre': 'Psicología', 'icon': Icons.psychology},
  {'nombre': 'Cardiología', 'icon': Icons.favorite},
  {'nombre': 'Neurología', 'icon': Icons.memory},
  {'nombre': 'Ginecología', 'icon': Icons.pregnant_woman},
  {'nombre': 'Dermatología', 'icon': Icons.spa},
  {'nombre': 'Pediatría', 'icon': Icons.child_care},
  {'nombre': 'Oftalmología', 'icon': Icons.visibility},
  {'nombre': 'Ortopedia', 'icon': Icons.accessible},
];


