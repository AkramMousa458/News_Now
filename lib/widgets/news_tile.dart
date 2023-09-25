import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            child: Image.asset('assets/general.avif',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          const Text('loremloremlor123123123emloremlorem',
          textAlign: TextAlign.end,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,  
          ),),
          const SizedBox(height: 10),
          const Text('loremloremloremloremlorem loremloremloremloremlorem loremloremloremloremlorem',
          maxLines: 2,
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w500,  
          ),),
        ],
      ),
    );
  }
}
