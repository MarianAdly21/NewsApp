import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage("assets/business.webp"),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "wertyuiopppppppppppppppppppppppppppppphhhhhhhhhhhhhhhhhhhhhhhhjjjjjjj",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "wertyuiopppppppppppppppppppppppppppppphhh",
          maxLines: 2,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
