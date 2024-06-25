import 'package:flutter/material.dart';
import 'package:news__app/models/artical.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articalMobel});
  final ArticalMobel articalMobel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: articalMobel.image != null
              ? Image.network(
                  articalMobel.image!,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                )
              : Image.asset('assets/technology.jpeg',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
        ),
       const SizedBox(
          height: 10,
        ),
        Text(
          articalMobel.title        ,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style:const  TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
       const SizedBox(
          height: 10,
        ),
        Text(
          articalMobel.subTitle??"",
          maxLines: 2,
          style:const TextStyle(
            color: Colors.grey,
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
