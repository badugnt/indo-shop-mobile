import 'package:flutter/material.dart';
import 'package:indo_shop/models/product_entry.dart';

class ProductEntryCard extends StatelessWidget {
  final ProductEntry product;
  final VoidCallback onTap;

  const ProductEntryCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: InkWell(
        onTap: onTap,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(color: Colors.grey.shade300),
          ),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Thumbnail
                (product.thumbnail.isNotEmpty)
                    // JIKA ADA: Tampilkan Image.network
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.network(
                          // GANTI URL ini ke 10.0.2.2 jika pakai emulator
                          'http://localhost:8000/proxy-image/?url=${Uri.encodeComponent(product.thumbnail)}',
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              Container(
                                height: 150,
                                color: Colors.grey[300],
                                child: const Center(
                                  child: Icon(Icons.broken_image),
                                ),
                              ),
                        ),
                      )
                    // JIKA TIDAK ADA (null atau string kosong): Tampilkan placeholder
                    : Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Center(
                          child: Icon(
                            Icons
                                .image_not_supported, // Icon "gambar tidak ada"
                            color: Colors.grey[600],
                            size: 50,
                          ),
                        ),
                      ),
                const SizedBox(height: 8),

                // name
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                // Icon(
                //   Icons.price_change_outlined,
                //   size: 16,
                //   color: Colors.grey[600],
                // ),
                // Text(
                //   product.price.toString(),
                //   style: const TextStyle(
                //     fontSize: 12.0,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                Row(
                  children: [
                    Icon(
                      Icons.price_change_outlined,
                      size: 16,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Rp ${product.price.toString()} ',
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                // Category
                Text('Category: ${product.category}'),
                const SizedBox(height: 6),

                // description preview
                Text(
                  product.description.length > 100
                      ? '${product.description.substring(0, 100)}...'
                      : product.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.black54),
                ),
                const SizedBox(height: 6),

                // Featured indicator
                if (product.isFeatured)
                  const Text(
                    'Featured',
                    style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
