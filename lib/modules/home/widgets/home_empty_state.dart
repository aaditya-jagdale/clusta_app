import 'package:clusta/modules/home/widgets/custom_grid_tile.dart';
import 'package:clusta/modules/shared/widgets/buttons.dart';
import 'package:clusta/modules/shared/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeEmptyState extends StatelessWidget {
  const HomeEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          SvgPicture.asset("assets/icons/file_search.svg"),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "No Clusters Found",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              Text(
                "Click on the button below to start a new project",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.white30,
                ),
              ),
            ],
          ),
          PrimaryButton(
            icon: Icon(Icons.add_rounded),
            title: "New Project",
            onPressed: () {},
          ),

          Row(
            spacing: 32,
            children: [
              Expanded(child: Divider(color: AppColors.white.withAlpha(30))),
              Text("or"),
              Expanded(child: Divider(color: AppColors.white.withAlpha(30))),
            ],
          ), //Grid view
          GridView(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 1.6,
            ),
            children: [
              CustomGridTile(
                icon: Icon(Icons.add_rounded, color: Colors.white),
                title: "Import PDF",
                onTap: () {
                  HapticFeedback.vibrate();
                },
              ),
              CustomGridTile(
                icon: SvgPicture.asset("assets/icons/link.svg", height: 24),
                title: "Add URL",
                onTap: () {
                  HapticFeedback.vibrate();
                },
              ),
              CustomGridTile(
                icon: SvgPicture.asset("assets/icons/scan.svg", height: 24),
                title: "Paste Text",
                onTap: () {
                  HapticFeedback.vibrate();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
