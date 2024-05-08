import 'package:flutter/material.dart';

class ShoesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                // Tindakan saat gambar ditekan
              },
              child: Image.network(
                'https://th.bing.com/th?id=OIP.3Y1UY4_YSVDg2PrOO3vxdwHaFj&w=288&h=216&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2', // URL gambar
                width: 32, // Lebar gambar
                height: 32, // Tinggi gambar
                fit: BoxFit.cover, // Penyesuaian gambar
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          ShoeItem(
            title: 'Nike SB Zoom Blazer',
            subtitle: 'Mid Premium',
            price: '\$8,795',
            image: 'https://th.bing.com/th/id/OIP.RdWFHLNvH26NHECkTD_nTAHaHa?w=209&h=209&c=7&r=0&o=5&pid=1.7', // URL gambar contoh
            color: Colors.blue[100]!, // Warna biru
          ),
          ShoeItem(
            title: 'Nike Air Zoom Pegasus',
            subtitle: "Men's Road Running Shoes",
            price: '\$9,995',
            image: 'https://th.bing.com/th/id/OIP.xCNvZvrUF3Hqtyc1cQXWPQHaD8?w=318&h=180&c=7&r=0&o=5&pid=1.7', // URL gambar contoh
            color: Colors.green[100]!, // Warna hijau
          ),
          ShoeItem(
            title: 'Nike ZoomX Vaporfly',
            subtitle: "Men's Road Racing Shoe",
            price: '\$19,695',
            image: 'https://th.bing.com/th/id/OIP.d7KnGqk6qkVnNjuVgs6L2wHaEK?rs=1&pid=ImgDetMain', // URL gambar contoh
            color: Colors.orange[100]!, // Warna oranye
          ),
          ShoeItem(
            title: 'Nike Air Force 1 \$50',
            subtitle: "Older Kids' Shoe",
            price: '\$6,295',
            image: 'https://th.bing.com/th/id/OIP.Nk2AFUz5coC2wd1OkHv0bgHaHa?rs=1&pid=ImgDetMain', // URL gambar contoh
            color: Colors.purple[100]!, // Warna ungu
          ),
          ShoeItem(
            title: 'Nike Waffle One',
            subtitle: "Men's Shoes",
            price: '\$8,295',
            image: 'https://th.bing.com/th/id/OIP.cVt2L7oLMdxpGe1cI2joaQHaFM?rs=1&pid=ImgDetMain', // URL gambar contoh
            color: Colors.red[100]!, // Warna merah
          ),
        ],
      ),
    );
  }
}

class ShoeItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String image;
  final Color color;

  ShoeItem({required this.title, required this.subtitle, required this.price, required this.image, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color, // Warna card
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(subtitle),
                  Text(
                    price,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: Image.network(
                image,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}