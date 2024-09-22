import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/router_app.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 55,
        bottom: 25,
      ),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 22,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(RouterApp.kSearchView);
              },
              icon: const Icon(
                size: 20,
                FontAwesomeIcons.magnifyingGlass,
              ))
        ],
      ),
    );
  }
}
