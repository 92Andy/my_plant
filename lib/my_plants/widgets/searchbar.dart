import 'package:flutter/material.dart';

import 'package:my_plant/constants/my_plant_colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'Search your plant',
            hintStyle: TextStyle(
              color: MyPlantColors.lightGrey,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: MyPlantColors.lightGrey,
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
          color: MyPlantColors.greenSmoke,
        ),
      ],
    );
  }
}
