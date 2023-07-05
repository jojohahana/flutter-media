import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class LatihanImage1 extends StatelessWidget {
  const LatihanImage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Image 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://plus.unsplash.com/premium_photo-1675705690586-3d35326e4771?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60',
                width: 300,
                height: 150,
                fit: BoxFit.cover),
            const SizedBox(
              height: 20,
            ),
            FadeInImage.assetNetwork(
              placeholder: 'assets/block.gif',
              image:
                  'https://plus.unsplash.com/premium_photo-1675705690586-3d35326e4771?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60',
              width: 300,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            CachedNetworkImage(
              imageUrl:
                  'https://plus.unsplash.com/premium_photo-1675705690586-3d35326e4771?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60',
              placeholder: (context, url) => const CircularProgressIndicator(),
            )
          ],
        ),
      ),
    );
  }
}
