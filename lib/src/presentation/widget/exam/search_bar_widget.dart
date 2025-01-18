import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_flutter_project/core/images/custom_images.dart';

class SearchBarWidget extends StatelessWidget {
   SearchBarWidget({super.key});

  final TextEditingController searchController =TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        controller: searchController,
        onChanged: (value){},
        decoration: InputDecoration(
          prefixIcon:SvgPicture.asset(CustomImages.searchSvg),
          hintText: 'جستجو',
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        ),
      ),
    );
  }


}
