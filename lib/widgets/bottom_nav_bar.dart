import 'package:flutter/material.dart';
import 'package:revel/screens/ExploreScreen.dart';

class AppBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final BuildContext pageContext;

  const AppBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.pageContext,
  });

  void _onTap(int index) {
    if (index == currentIndex) return;
    switch (index) {
      case 0:
              Navigator.pushNamedAndRemoveUntil(
        pageContext,
        '/mainmenu',
        (route) => false,
      );
        break;
      case 1:
        Navigator.push(
          pageContext,
          MaterialPageRoute(builder: (context) => const Explorescreen()),
        );
        break;
      case 2:
        // Navigator.pushNamed(pageContext, '/notifications');
        break;
      case 3:
        // Navigator.pushNamed(pageContext, '/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double slotWidth = screenWidth / 4;
    final double circleLeft =
        (slotWidth * currentIndex) + (slotWidth / 2) - 26;

    // Icon image URLs from your googleapis bucket
    final List<Map<String, String>> items = [
      {
        'label': 'Home',
        'icon': 'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/lt1nk3n7_expires_30_days.png',
        'activeIcon': 'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/lt1nk3n7_expires_30_days.png',
      },
      {
        'label': 'Explore',
        'icon': 'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/5uhej8ty_expires_30_days.png',
        'activeIcon': 'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/5uhej8ty_expires_30_days.png',
      },
      {
        'label': 'Notifications',
        'icon': 'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/ijpk8d0q_expires_30_days.png',
        'activeIcon': 'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/ijpk8d0q_expires_30_days.png',
      },
      {
        'label': 'Profile',
        'icon': 'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/l91ff07m_expires_30_days.png',
        'activeIcon': 'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/l91ff07m_expires_30_days.png',
      },
    ];

    return Container(
      color: const Color(0xFFFFFFE3),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Nav items row
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 8),
            child: Row(
              children: List.generate(items.length, (index) {
                final bool isActive = index == currentIndex;
                return Expanded(
                  child: GestureDetector(
                    onTap: () => _onTap(index),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Hide icon for active — circle covers it
                        if (!isActive)
                          Opacity(
                            opacity: 0.5,
                            child: Image.network(
                              items[index]['icon']!,
                              width: 24,
                              height: 24,
                              fit: BoxFit.fill,
                            ),
                          ),
                        if (isActive) const SizedBox(height: 24),
                        const SizedBox(height: 4),
                        Text(
                          items[index]['label']!,
                          style: TextStyle(
                            color: isActive
                                ? const Color(0xFFB94429)
                                : const Color(0xFF2C3439).withValues(alpha: 0.5),
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),

          // Raised active circle
          Positioned(
            top: -20,
            left: circleLeft,
            child: GestureDetector(
              onTap: () => _onTap(currentIndex),
              child: Column(
                children: [
                  Container(
                    width: 52,
                    height: 52,
                    decoration: const BoxDecoration(
                      color: Color(0xFFB94429),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.network(
                        items[currentIndex]['activeIcon']!,
                        width: 24,
                        height: 24,
                        fit: BoxFit.fill,
                        color: const Color(0xFFFFFFE3),
                        colorBlendMode: BlendMode.srcIn,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}