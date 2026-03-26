import 'package:flutter/material.dart';

class Attraction1 extends StatelessWidget {
  const Attraction1({super.key});

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
                    'Molo Church',
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
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Molo_Church_view_%28with_the_Plaza_Molo_fountain%29.jpg/500px-Molo_Church_view_%28with_the_Plaza_Molo_fountain%29.jpg',
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
                    'Molo Church, formally known as the St. Anne Parish Church, stands as an architectural and cultural gem in Iloilo City, Philippines. Built in 1831, this Gothic-Renaissance structure is renowned for its impressive facade, which features towering spires and intricate stained-glass windows.\n\nOften referred to as the "Feminist Church" of the Philippines, Molo Church is unique for its collection of 16 life-sized female saint statues that line the central nave. These statues, meticulously carved and beautifully detailed, celebrate the significant role of women in the Catholic faith and add a distinctive character to the church\'s interior.',
                    style: TextStyle(
                      color: Color(0xFF2C3439),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Beyond its architectural beauty, Molo Church holds deep historical and cultural significance for the local community. It has been a silent witness to the city\'s evolution, surviving earthquakes, wars, and natural calamities. The church is not only a place of worship but also a repository of Iloilo\'s rich history and traditions. Visitors to Molo Church are often struck by its serene ambiance and the profound sense of heritage it exudes. The church continues to be an active center for religious activities and community gatherings, making it a cherished landmark that connects the past and present generations of Ilonggos.',
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
