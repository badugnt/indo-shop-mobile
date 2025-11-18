import 'package:flutter/material.dart';
import 'package:indo_shop/widgets/left_drawer.dart';
import 'dart:convert';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:indo_shop/screens/menu.dart';

class ProductFormPage extends StatefulWidget {
  const ProductFormPage({super.key});

  @override
  State<ProductFormPage> createState() => _ProductFormPageState();
}

class _ProductFormPageState extends State<ProductFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  double _price = 0.0;
  String _description = "";
  String _category = "accessories"; // default
  String _thumbnail = "";
  double _rating = 0.0;
  bool _isFeatured = false; // default

  // # CATEGORY_CHOICES =[
  // #     ('jersey', 'Jersey'),
  // #     ('shoes', 'Football Shoes'),
  // #     ('ball', 'Football'),
  // #     ('equipment', 'Training Equipment'),
  // #     ('accessories', 'Accessories'),
  // # ]
  final List<String> _categories = [
    'jersey',
    'accessories',
    'equipment',
    'shoes',
    'ball',
  ];
  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Form Tambah Produk')),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      // TODO: Tambahkan drawer yang sudah dibuat di sini
      drawer: LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Judul Produk",
                    labelText: "Judul Produk",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),

                  onChanged: (String? value) {
                    setState(() {
                      _name = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama produk tidak boleh kosong!';
                    }
                    if (value.trim().length > 100) {
                      return 'Nama produk maksimal 100 karakter';
                    }
                    return null;
                  },
                ),
              ),
              // harga
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Harga Produk",
                    labelText: "Harga Produk",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _price = double.tryParse(value!) ?? 0.0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Harga produk tidak boleh kosong!';
                    }
                    final price = double.tryParse(value);
                    if (price == null || price <= 0) {
                      return 'Harga produk harus berupa angka positif!';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "Deskripsi Produk",
                    labelText: "Deskripsi Produk",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _description = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Deskripsi produk tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),
              // kategori
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    labelText: "Kategori",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  value: _category,
                  items: _categories.map((cat) {
                    return DropdownMenuItem(
                      value: cat,
                      child: Text(cat[0].toUpperCase() + cat.substring(1)),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _category = newValue!;
                    });
                  },
                ),
              ),
              // thumbnail
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "URL Thumbnail",
                    labelText: "URL Thumbnail",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _thumbnail = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'URL Thumbnail tidak boleh kosong!';
                    }
                    final uri = Uri.tryParse(value);
                    if (uri == null || !uri.isAbsolute) {
                      return 'Masukkan URL yang valid!';
                    }
                    return null;
                  },
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Rating Produk (0.0 - 5.0)",
                    labelText: "Rating Produk",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      // Nilai rating akan diperbarui di sini
                      _rating = double.tryParse(value!) ?? 0.0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Rating produk tidak boleh kosong!';
                    }
                    final rating = double.tryParse(value);
                    if (rating == null) {
                      return 'Rating produk harus berupa angka!';
                    }
                    // Validasi range rating
                    if (rating < 0.0 || rating > 5.0) {
                      return 'Rating produk harus antara 0.0 dan 5.0!';
                    }
                    return null;
                  },
                ),
              ),
              // is featured
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SwitchListTile(
                  title: const Text("Tandai sebagai Produk unggulan"),
                  value: _isFeatured,
                  onChanged: (bool value) {
                    setState(() {
                      _isFeatured = value;
                    });
                  },
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        // TODO: Replace the URL with your app's URL
                        // To connect Android emulator with Django on localhost, use URL http://10.0.2.2/
                        // If you using chrome,  use URL http://localhost:8000

                        final response = await request.postJson(
                          "http://localhost:8000/create-flutter/",
                          jsonEncode({
                            "name": _name,
                            "price": _price,
                            "description": _description,
                            "thumbnail": _thumbnail,
                            "category": _category,
                            "is_featured": _isFeatured,
                            "rating": _rating,
                          }),
                        );
                        if (context.mounted) {
                          if (response['status'] == 'success') {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Product successfully added!"),
                              ),
                            );
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyHomePage(),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  "Something went wrong, please try again.",
                                ),
                              ),
                            );
                          }
                        }
                      }
                    },
                    child: const Text(
                      "Simpan",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
