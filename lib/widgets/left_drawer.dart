import 'package:flutter/material.dart';
import 'package:indo_shop/screens/menu.dart';
import 'package:indo_shop/screens/productlist_form.dart';
import 'package:indo_shop/screens/product_entry_list.dart';
import 'package:indo_shop/screens/myproduct_entry_list.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 254, 174, 150)),
            child: Column(
              children: [
                Text(
                  'Indo Shop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Seluruh keperluan sepak bola yang anda butuhkan ada di sini!",
                  // TODO: Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),

          // TODO: Bagian routing
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_box_outlined),
            title: const Text('Add Product'),
            // Bagian redirection ke NewsFormPage
            onTap: () {
              /*
    TODO: Buatlah routing ke ProductFormPage di sini,
    setelah halaman ProductFormPage sudah dibuat.
    */
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ProductFormPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.inventory_2_outlined),
            title: const Text('All Product'),
            onTap: () {
              // Route to news list page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductEntryListPage(),
                ),
              );
            },
          ),
                    ListTile(
            leading: const Icon(Icons.sell_outlined ),
            title: const Text('My Product'),
            onTap: () {
              // Route to news list page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyProductEntryListPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
