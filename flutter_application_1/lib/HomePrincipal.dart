import 'package:flutter/material.dart';
import 'package:flutter_application_1/DetalleScreen.dart'; // Importa el archivo donde está definida DetalleScreen

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({Key? key}) : super(key: key);

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Modal"),
        backgroundColor: Color.fromARGB(255, 255, 126, 40),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.0,
          ),
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    
                    context,
                    MaterialPageRoute(builder: (context) => DetalleScreen(menu[index]["titulo"])),
                  );
                },
                child: Container(
                  width: 100, // Ajusta el ancho según sea necesario
                  height: 100, // Ajusta la altura según sea necesario
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(menu[index]["icono"]),
                      SizedBox(height: 8),
                      Text(
                        menu[index]["titulo"],
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> menu = [
  {
    'codigo': '001',
    'titulo': 'Citas Médicas',
    'icono': Icons.local_hospital,
  },
  {
    'codigo': '002',
    'titulo': 'Urgencias',
    'icono': Icons.warning,
  },
  {
    'codigo': '003',
    'titulo': 'Especialistas',
    'icono': Icons.person,
  },
  {
    'codigo': '004',
    'titulo': 'Farmacia',
    'icono': Icons.local_pharmacy,
  },
  {
    'codigo': '005',
    'titulo': 'Pacientes',
    'icono': Icons.people,
  },
  {
    'codigo': '006',
    'titulo': 'Terapias',
    'icono': Icons.healing,
  },
  {
    'codigo': '007',
    'titulo': 'Laboratorio',
    'icono': Icons.science,
  },
  {
    'codigo': '008',
    'titulo': 'Sangre',
    'icono': Icons.opacity,
  },
  {
    'codigo': '009',
    'titulo': 'Rehabilitacion',
    'icono': Icons.accessibility_new,
  },
  {
    'codigo': '010',
    'titulo': 'Consultas',
    'icono': Icons.assignment_ind,
  },
  {
    'codigo': '011',
    'titulo': 'Informes',
    'icono': Icons.description,
  },
  {
    'codigo': '012',
    'titulo': 'Calendario',
    'icono': Icons.calendar_today,
  },
  {
    'codigo': '013',
    'titulo': 'Pagos',
    'icono': Icons.payment,
  },
  {
    'codigo': '014',
    'titulo': 'Contactos',
    'icono': Icons.contacts,
  },
  {
    'codigo': '015',
    'titulo': 'Información',
    'icono': Icons.info,
  },
];
