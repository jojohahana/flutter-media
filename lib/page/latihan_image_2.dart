import 'package:flutter/material.dart';
import 'package:flutter_media/notifier/latihan_notifier.dart';

class LatihanImage2 extends StatefulWidget {
  const LatihanImage2({super.key});

  @override
  State<LatihanImage2> createState() => _LatihanImage2State();
}

class _LatihanImage2State extends State<LatihanImage2> {
  LatihanNotifier notifier = LatihanNotifier();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Flutter Media"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: ListenableBuilder(
          listenable: notifier,
          builder: (context, child) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: notifier.imagePath == null
                    ? const Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.image,
                          size: 100,
                        ),
                      )
                    : _showImage(),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => _onGalleryView(),
                      child: const Text("Gallery"),
                    ),
                    ElevatedButton(
                      onPressed: () => _onCameraView(),
                      child: const Text("Camera"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _onGalleryView() async {}

  _onCameraView() async {}

  Widget _showImage() {
    return const Placeholder();
  }
}
