import 'package:flutter/material.dart';

class Attraction2 extends StatelessWidget {
  const Attraction2({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color(0xFFF5F5DB),
    body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              color: const Color(0xFFFFFFE3),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Back button
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Color(0xFF2C3439),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Molo Mansion',
                    style: TextStyle(
                      color: Color(0xFF2C3439),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Main image
            Padding(
              padding: const EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/4/4c/Iloilo_Molo_Mansion.jpg',
                  width: double.infinity,
                  height: 420,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Molo Mansion, also known as the Yusay-Consing Mansion, is a historic landmark situated in the Molo district of Iloilo City. Built in the 1920s, this majestic colonial-era house stands as a testament to the opulent lifestyle of Iloilo\'s affluent families during the American colonial period. The mansion showcases a stunning blend of architectural styles, featuring Neoclassical and Art Deco influences that highlight its intricate woodwork, grandiose columns, and expansive balconies.',
                    style: TextStyle(
                      color: Color(0xFF2C3439),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'The mansion\'s grounds are also home to lush gardens and outdoor spaces, where cultural events, exhibitions, and performances are regularly held, celebrating the rich heritage of Iloilo. Molo Mansion offers a unique blend of history, culture, and commerce, making it a must-visit destination for those looking to experience the heart of Iloilo\'s cultural legacy.',
                    style: TextStyle(
                      color: Color(0xFF2C3439),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Map section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Location on the map',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://maps.googleapis.com/maps/api/staticmap?center=Molo+Church,Iloilo&zoom=15&size=600x300&maptype=roadmap',
                      width: double.infinity,
                      height: 242,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: double.infinity,
                          height: 242,
                          decoration: BoxDecoration(
                            color: const Color(0xFFCCCCCC),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: Text('Map not available'),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Take me there button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFB94429),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: const Text(
                    'Take me there',
                    style: TextStyle(
                      color: Color(0xFFFFFFE3),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    ),
  );
}
}
