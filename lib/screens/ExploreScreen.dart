import 'package:flutter/material.dart';
import 'package:revel/widgets/bottom_nav_bar.dart';
import 'package:revel/screens/Attraction1.dart'; // adjust path as needed

class Explorescreen extends StatelessWidget {
  const Explorescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DB),
      body: SafeArea(
        child: Column(
          children: [
            // Top bar
            Container(
              color: const Color(0xFFFFFFE3),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '11:07',
                    style: TextStyle(
                      color: Color(0xFF2C3439),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.signal_cellular_alt,
                        size: 16,
                        color: Color(0xFF2C3439),
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.wifi, size: 16, color: Color(0xFF2C3439)),
                      SizedBox(width: 4),
                      Icon(
                        Icons.battery_full,
                        size: 16,
                        color: Color(0xFF2C3439),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Header
            Container(
              color: const Color(0xFFFFFFE3),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/omc3gko5_expires_30_days.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Opacity(
                        opacity: 0.5,
                        child: Text(
                          'Good to see you,',
                          style: TextStyle(
                            color: Color(0xFF2C3439),
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Text(
                        'Janne',
                        style: TextStyle(
                          color: Color(0xFF2C3439),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Scrollable content
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Discover banner
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                      child: Container(
                        width: double.infinity,
                        height: 177,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: const AssetImage('assets/img/exploreic.png'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              Colors.black.withValues(alpha: 0.4),
                              BlendMode.darken,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Discover Iloilo City in Pictures',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFE3),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFB94429),
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: const Text(
                                    'Show me',
                                    style: TextStyle(
                                      color: Color(0xFFFFFFE3),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Transportation
                    _sectionTitle('Transportation'),
                    SizedBox(
                      height: 48,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            _transportChip(
                              'Jeepneys and Mini Bus Routes',
                              const Color(0xFFB94429),
                            ),
                            _transportChip(
                              'Car Booking',
                              const Color(0xFFE09336),
                            ),
                            _transportChip(
                              'Taxi Operators',
                              const Color(0xFFD58181),
                            ),
                            _transportChip(
                              'Transport Hubs',
                              const Color(0xFF614F89),
                            ),
                            _transportChip(
                              'Ferry Terminals',
                              const Color(0xFF2C3950),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Tourist Attractions
                    _sectionTitle('Tourist Attractions'),
                    SizedBox(
                      height: 228,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Attraction1(),
                                  ),
                                );
                              },
                              child: _attractionCard(
                                'MOLO CHURCH',
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Molo_Church_view_%28with_the_Plaza_Molo_fountain%29.jpg/500px-Molo_Church_view_%28with_the_Plaza_Molo_fountain%29.jpg',
                              ),
                            ),
                            _attractionCard(
                              'MOLO MANSION',
                              'https://iloiloartlife.com/wp-content/uploads/2023/08/Molo-Mansion-Art-Space-scaled.jpg',
                            ),
                            _attractionCard(
                              'FORT SAN PEDRO',
                              'https://upload.wikimedia.org/wikipedia/commons/a/ae/Fort_San_Pedro%2C_City_Proper_04-22_B.jpg',
                            ),
                            _attractionCard(
                              'CASA MARIQUIT',
                              'https://upload.wikimedia.org/wikipedia/commons/7/76/Casa_Mariquit_%282026%29_-_Jaro%2C_Iloilo_22.jpg',
                            ),
                            _seeAllCard(),
                          ],
                        ),
                      ),
                    ),

                    // Food Culture
                    _sectionTitle('Food Culture'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Opacity(
                            opacity: 0.5,
                            child: Text(
                              'Discover the diverse culinary delight Ilonggos offer',
                              style: TextStyle(
                                color: Color(0xFF2C3439),
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: double.infinity,
                            height: 171,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: const NetworkImage(
                                  'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/g0u86bxx_expires_30_days.png',
                                ),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withValues(alpha: 0.3),
                                  BlendMode.darken,
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 12,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFB94429),
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: const Text(
                                    'Order now',
                                    style: TextStyle(
                                      color: Color(0xFFFFFFE3),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Accommodations
                    _sectionTitle('Accommodations'),
                    SizedBox(
                      height: 228,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            _accommodationCard(
                              'HOTELS',
                              'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/d4lkq7th_expires_30_days.png',
                            ),
                            _accommodationCard(
                              'RESORTS',
                              'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/92ccmsa3_expires_30_days.png',
                            ),
                            _accommodationCard(
                              'CONDOS',
                              'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/g0u86bxx_expires_30_days.png',
                            ),
                            _accommodationCard(
                              'BOARDING HOUSES',
                              'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/qnib31od_expires_30_days.png',
                            ),
                            _accommodationCard(
                              'APARTMENTS',
                              'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/nzjlcjam_expires_30_days.png',
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Shopping
                    _sectionTitle('Shopping'),
                    SizedBox(
                      height: 112,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            _shoppingCard(
                              'MALLS',
                              'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/ascaopsb_expires_30_days.png',
                            ),
                            _shoppingCard(
                              'SHOPS',
                              'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/iu0br5ao_expires_30_days.png',
                            ),
                            _shoppingCard(
                              'MARKETS',
                              'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/d4lkq7th_expires_30_days.png',
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Tourists Corner
                    _sectionTitle('Tourists Corner'),
                    SizedBox(
                      height: 183,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            _eventCard(
                              'January',
                              '26',
                              'Iloilo Dinagyang Festival',
                              const Color(0xFF32424B),
                              'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/qnib31od_expires_30_days.png',
                            ),
                            _eventCard(
                              'February',
                              '01',
                              'Jaro Fiesta',
                              const Color(0xFF614F89),
                              'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/nzjlcjam_expires_30_days.png',
                            ),
                            _eventCard(
                              'March',
                              '02',
                              'Paraw Regatta Festival',
                              const Color(0xFF4B8A7E),
                              'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/ascaopsb_expires_30_days.png',
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

            // Bottom nav bar
            AppBottomNavBar(
              currentIndex: 1, // Explore is active
              pageContext: context,
            ),
          ],
        ),
      ),
    );
  }

  // --- Helper Widgets ---

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 16, 12, 8),
      child: Text(
        title,
        style: const TextStyle(color: Color(0xFF171717), fontSize: 12),
      ),
    );
  }

  Widget _transportChip(String label, Color color) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: const ShapeDecoration(
              color: Color(0xFFAAAAAA),
              shape: OvalBorder(),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFFF5F5DB),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _attractionCard(String label, String imageUrl) {
    return Container(
      width: 128,
      height: 216,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withValues(alpha: 0.2),
            BlendMode.darken,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              label,
              style: const TextStyle(
                color: Color(0xFFFFFFE3),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _seeAllCard() {
    return Container(
      width: 128,
      height: 216,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF888888),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Text(
          'SEE ALL',
          style: TextStyle(
            color: Color(0xFFFFFFE3),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _accommodationCard(String label, String imageUrl) {
    return Container(
      width: 128,
      height: 216,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withValues(alpha: 0.2),
            BlendMode.darken,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              label,
              style: const TextStyle(
                color: Color(0xFFFFFFE3),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _shoppingCard(String label, String imageUrl) {
    return Container(
      width: 168,
      height: 100,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withValues(alpha: 0.2),
            BlendMode.darken,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              label,
              style: const TextStyle(
                color: Color(0xFFFFFFE3),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _eventCard(
    String month,
    String day,
    String event,
    Color color,
    String imageUrl,
  ) {
    return Container(
      width: 289,
      height: 171,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            color.withValues(alpha: 0.85),
            BlendMode.srcOver,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            month,
            style: const TextStyle(color: Color(0xFFF5F5DB), fontSize: 12),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                day,
                style: const TextStyle(
                  color: Color(0xFFF5F5DB),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      event,
                      style: const TextStyle(
                        color: Color(0xFFF5F5DB),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'See full schedule',
                      style: TextStyle(color: Color(0xFFF5F5DB), fontSize: 8),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _navItem(IconData icon, String label, bool isActive) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: isActive
              ? const Color(0xFFB94429)
              : const Color(0xFF2C3439).withValues(alpha: 0.5),
          size: 24,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: isActive
                ? const Color(0xFFB94429)
                : const Color(0xFF2C3439).withValues(alpha: 0.5),
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
