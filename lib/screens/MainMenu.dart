import 'package:flutter/material.dart';
import 'package:revel/widgets/bottom_nav_bar.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});
  @override
  MainMenuState createState() => MainMenuState();
}

class MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: const Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFF5F5DB),
                  ),
                  width: double.infinity,
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Weather header
                        IntrinsicHeight(
                          child: Container(
                            color: const Color(0xFFFFFFE3),
                            padding: const EdgeInsets.only(
                              top: 7,
                              bottom: 7,
                              left: 12,
                              right: 12,
                            ),
                            margin: const EdgeInsets.only(bottom: 24),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Time row
                                Container(
                                  margin: const EdgeInsets.only(bottom: 20),
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "11:07",
                                        style: TextStyle(
                                          color: Color(0xFF2C3439),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Container(
                                        width: 56,
                                        height: 16,
                                        child: Image.network(
                                          "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/1qph9qqr_expires_30_days.png",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Temperature row
                                Container(
                                  margin: const EdgeInsets.only(bottom: 8),
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    right: 8),
                                                width: 24,
                                                height: 24,
                                                child: Image.network(
                                                  "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/omc3gko5_expires_30_days.png",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    right: 11),
                                                child: const Text(
                                                  "Feels like ",
                                                  style: TextStyle(
                                                    color: Color(0xFF2C3439),
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                              const Text(
                                                "42°C",
                                                style: TextStyle(
                                                  color: Color(0xFFB94429),
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(width: 22),
                                          Row(
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    right: 4),
                                                width: 12,
                                                height: 12,
                                                child: Image.network(
                                                  "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/1xy3hg1l_expires_30_days.png",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              const Text(
                                                "36° C",
                                                style: TextStyle(
                                                  color: Color(0xFF2C3439),
                                                  fontSize: 8,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        "Fri 29",
                                        style: TextStyle(
                                          color: Color(0xFF2C3439),
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Forecast row
                                Container(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Today is soaking hot! Stay hydrated!",
                                        style: TextStyle(
                                          color: Color(0xFF2C3439),
                                          fontSize: 10,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                right: 6),
                                            child: const Text(
                                              "See weekly forecast",
                                              style: TextStyle(
                                                color: Color(0xFFB94429),
                                                fontSize: 10,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 16,
                                            height: 16,
                                            child: Image.network(
                                              "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/nqllp1vo_expires_30_days.png",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Search bar
                        IntrinsicHeight(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color(0xFFFFFFE3),
                            ),
                            padding: const EdgeInsets.all(12),
                            margin: const EdgeInsets.only(
                              bottom: 15,
                              left: 12,
                              right: 12,
                            ),
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          const EdgeInsets.only(right: 12),
                                      width: 24,
                                      height: 24,
                                      child: Image.network(
                                        "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/dka1bdhc_expires_30_days.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    const Text(
                                      "Search anything",
                                      style: TextStyle(
                                        color: Color(0xFF2C3439),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  width: 24,
                                  height: 24,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image.network(
                                      "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/hxadit8h_expires_30_days.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Shortcuts
                        IntrinsicHeight(
                          child: Container(
                            margin: const EdgeInsets.only(
                              bottom: 24,
                              left: 12,
                              right: 12,
                            ),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 12),
                                  child: const Text(
                                    "Shortcuts",
                                    style: TextStyle(
                                      color: Color(0xFF2C3439),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                // Row 1
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      _shortcutItem(
                                        "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/fqcmagza_expires_30_days.png",
                                        "Food",
                                        leftMargin: 12,
                                      ),
                                      _shortcutItem(
                                        "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/kpzu74aj_expires_30_days.png",
                                        "Larga 'ta!",
                                      ),
                                      _shortcutItem(
                                        "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/k48v0axk_expires_30_days.png",
                                        "Lodging",
                                      ),
                                      _shortcutItem(
                                        "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/pakz9xr1_expires_30_days.png",
                                        "Shopping",
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 12),
                                // Row 2
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      _shortcutItem(
                                        "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/pyrar9kx_expires_30_days.png",
                                        "Click Spots",
                                        leftMargin: 11,
                                      ),
                                      _shortcutItem(
                                        "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/51494eyn_expires_30_days.png",
                                        "Jeep/Bus Routes",
                                      ),
                                      _shortcutItem(
                                        "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/mks40k93_expires_30_days.png",
                                        "AllAboard",
                                      ),
                                      _shortcutItem(
                                        "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/grmxnxiu_expires_30_days.png",
                                        "Events",
                                      ),
                                      _shortcutItem(
                                        "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/sljicz17_expires_30_days.png",
                                        "All Services",
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Emergency Services
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 24,
                            left: 12,
                            right: 12,
                          ),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 12),
                                child: const Text(
                                  "Emergency Services Hotlines",
                                  style: TextStyle(
                                    color: Color(0xFF2C3439),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                          context,
                                          '/homeemergencyhotlinesfirestations',
                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: const Color(0xFFE05B4B),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 8,
                                        ),
                                        margin:
                                            const EdgeInsets.only(right: 8),
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  right: 12),
                                              width: 24,
                                              height: 24,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                child: Image.network(
                                                  "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/1jpl5gu7_expires_30_days.png",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            const Text(
                                              "Fire Stations",
                                              style: TextStyle(
                                                color: Color(0xFFF5F5DB),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                          context,
                                          '/homeemergencyhotlinespolicestations',
                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: const Color(0xFF7B5068),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 8,
                                        ),
                                        margin:
                                            const EdgeInsets.only(right: 8),
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  right: 12),
                                              width: 24,
                                              height: 24,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                child: Image.network(
                                                  "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/m3yhqbct_expires_30_days.png",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            const Text(
                                              "Police Stations",
                                              style: TextStyle(
                                                color: Color(0xFFF5F5DB),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                          context,
                                          '/homeemergencyhotlineshospitals',
                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: const Color(0xFF7B5068),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 8,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  right: 12),
                                              width: 24,
                                              height: 24,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                child: Image.network(
                                                  "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/tt7be0a6_expires_30_days.png",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            const Text(
                                              "Hospitals",
                                              style: TextStyle(
                                                color: Color(0xFFF5F5DB),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Breaking News
                        IntrinsicHeight(
                          child: Container(
                            margin: const EdgeInsets.only(
                              bottom: 24,
                              left: 12,
                              right: 12,
                            ),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 12),
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Breaking News",
                                        style: TextStyle(
                                          color: Color(0xFF2C3439),
                                          fontSize: 12,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                            context,
                                            '/homebreakingnews',
                                          );
                                        },
                                        child: const Text(
                                          "See all",
                                          style: TextStyle(
                                            color: Color(0xFFB94429),
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: const Color(0xFFFFFFE3),
                                  ),
                                  padding: const EdgeInsets.all(12),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 12),
                                        width: double.infinity,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      right: 8),
                                                  width: 24,
                                                  height: 24,
                                                  child: Image.network(
                                                    "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/oh9l9a3b_expires_30_days.png",
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                const Text(
                                                  "RIC News",
                                                  style: TextStyle(
                                                    color: Color(0xFF2C3439),
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                const SizedBox(width: 12),
                                                const Text(
                                                  "2 min ago",
                                                  style: TextStyle(
                                                    color: Color(0xFF2C3439),
                                                    fontSize: 8,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              width: 16,
                                              height: 16,
                                              child: Image.network(
                                                "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/lwxc3ll5_expires_30_days.png",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 12),
                                        width: double.infinity,
                                        child: const Text(
                                          "JUST IN: Iloilo City logs 1st pertussis death",
                                          style: TextStyle(
                                            color: Color(0xFF2C3439),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        "The Iloilo City Government cases reported today that it had recorded 30 cases of pertussis or whooping cough as of April 12, 2024.\n\nIn its pertussis advisory issued today, the city confirmed 10 cases, while one of those infected has died.",
                                        style: TextStyle(
                                          color: Color(0xFF777777),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // About Iloilo City
                        IntrinsicHeight(
                          child: Container(
                            margin: const EdgeInsets.only(
                              bottom: 14,
                              left: 12,
                              right: 12,
                            ),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 12),
                                  child: const Text(
                                    "About Iloilo City",
                                    style: TextStyle(
                                      color: Color(0xFF2C3439),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 4),
                                  height: 122,
                                  width: double.infinity,
                                  child: Image.network(
                                    "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/iu0br5ao_expires_30_days.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 4),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 4),
                                            width: 116,
                                            height: 92,
                                            child: Image.network(
                                              "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/d4lkq7th_expires_30_days.png",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Container(
                                            width: 116,
                                            height: 92,
                                            child: Image.network(
                                              "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/92ccmsa3_expires_30_days.png",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 188,
                                        child: Image.network(
                                          "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/g0u86bxx_expires_30_days.png",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),

              // ✅ New bottom nav bar
              AppBottomNavBar(
                currentIndex: 0,
                pageContext: context,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Shortcut helper
  Widget _shortcutItem(String imageUrl, String label,
      {double leftMargin = 0}) {
    return Container(
      margin: EdgeInsets.only(right: 23, left: leftMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 4),
            width: 40,
            height: 40,
            child: Image.network(imageUrl, fit: BoxFit.fill),
          ),
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFF2C3439),
              fontSize: 8,
            ),
          ),
        ],
      ),
    );
  }
}