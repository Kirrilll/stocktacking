import 'package:flutter/material.dart';

import 'dart:typed_data';


enum EStuffImageType {
  bytes,
  link
}

class StuffImage extends StatelessWidget {
  const StuffImage({super.key, required this.imageProvider, required this.imageType});

  final ImageProvider imageProvider;
  final EStuffImageType imageType;

  factory StuffImage.fromNetworkLink(String link) => StuffImage(
    imageProvider: NetworkImage(link),
    imageType: EStuffImageType.link,
  );

  factory StuffImage.fromBytes(Uint8List bytes) => StuffImage(
      imageProvider: MemoryImage(bytes),
      imageType: EStuffImageType.bytes
  );

  @override
  Widget build(BuildContext context) {
    return  Image(
      image: imageProvider,
      fit: BoxFit.cover,
      frameBuilder: (_, child, frame, ___) => frame != null
          ? child
          : const Center(child: CircularProgressIndicator()),
      errorBuilder: (_, __, ___) => const Center(child: Text('Не удалось загрузить..')),
    );
  }
}
