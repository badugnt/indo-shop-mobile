import 'package:flutter/material.dart';
import 'package:indo_shop/models/product_entry.dart';
import 'package:indo_shop/widgets/left_drawer.dart';
import 'package:indo_shop/screens/product_detail.dart';
import 'package:indo_shop/widgets/product_entry_card.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

class MyProductEntryListPage extends StatefulWidget {
  const MyProductEntryListPage({super.key});

  @override
  State<MyProductEntryListPage> createState() => _MyProductEntryListPageState();
}

class _MyProductEntryListPageState extends State<MyProductEntryListPage> {
  Future<List<ProductEntry>> fetchMyProduct(CookieRequest request) async {
    // PENTING: Ganti URL ini dengan endpoint Django kamu yang mengembalikan
    // JSON produk berdasarkan user yang sedang login (request.user)
        print('--- [DEBUG] MULAI FETCH MY PRODUCT ---');
    
    // 1. Cek Status Login di Mata Flutter
    print('[DEBUG] Status request.loggedIn: ${request.loggedIn}');
    print('[DEBUG] Cookies yang tersimpan: ${request.cookies}');
    print('[DEBUG] Headers yang akan dikirim: ${request.headers}');

    
    final response =
        await request.get('http://localhost:8000/json/?filter=my');
  print('[DEBUG] Response mentah dari server: $response');
    // Decode response to json format
    var data = response;

    // Convert json data to ProductEntry objects
    List<ProductEntry> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(ProductEntry.fromJson(d));
      }
    }
    return listProduct;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Products'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchMyProduct(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Column(
                children: [
                  Text(
                    'You have not added any products yet.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => ProductEntryCard(
                  product: snapshot.data![index],
                  onTap: () {
                    // Navigate to product detail page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductDetailPage(products: snapshot.data![index]),
                      ),
                    );
                  },
                ),
              );
            }
          }
        },
      ),
    );
  }
}