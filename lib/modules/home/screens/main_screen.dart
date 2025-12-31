import 'package:clusta/modules/home/screens/home_screen.dart';
import 'package:clusta/modules/notifications/screens/notification_screen.dart';
import 'package:clusta/modules/profile/screens/profile_screen.dart';
import 'package:clusta/riverpod/nav_indicator_rvpd.dart';
import 'package:clusta/riverpod/threads_rvpd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  final List<Widget> _screens = [HomeScreen(), ChatScreen(), ProfileScreen()];
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(threadsProvider.notifier).getThreads();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[ref.watch(navIndexProvider)],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          currentIndex: ref.watch(navIndexProvider),
          onTap: (index) {
            ref.read(navIndexProvider.notifier).setIndex(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/home.svg",
                colorFilter: ref.watch(navIndexProvider) == 0
                    ? ColorFilter.mode(Colors.white, BlendMode.srcIn)
                    : ColorFilter.mode(
                        Colors.white.withAlpha(50),
                        BlendMode.srcIn,
                      ),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/chat.svg",
                colorFilter: ref.watch(navIndexProvider) == 1
                    ? ColorFilter.mode(Colors.white, BlendMode.srcIn)
                    : ColorFilter.mode(
                        Colors.white.withAlpha(50),
                        BlendMode.srcIn,
                      ),
              ),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/profile.svg",
                colorFilter: ref.watch(navIndexProvider) == 2
                    ? ColorFilter.mode(Colors.white, BlendMode.srcIn)
                    : ColorFilter.mode(
                        Colors.white.withAlpha(50),
                        BlendMode.srcIn,
                      ),
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
