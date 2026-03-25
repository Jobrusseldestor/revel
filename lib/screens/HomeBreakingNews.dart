import 'package:flutter/material.dart';

class HomeBreakingNews extends StatefulWidget {
  const HomeBreakingNews({super.key});
  @override
  HomeBreakingNewsState createState() => HomeBreakingNewsState();
}

class HomeBreakingNewsState extends State<HomeBreakingNews> {
  String textField1 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFFFFFFFF),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFF5F5DB),
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 44),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header section
                  Container(
                    color: const Color(0xFFFFFFE3),
                    padding: const EdgeInsets.only(top: 2, right: 12),
                    margin: const EdgeInsets.only(bottom: 12),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Back button row
                        Container(
                          margin: const EdgeInsets.only(bottom: 24, left: 12),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  if (Navigator.canPop(context)) {
                                    Navigator.pop(context);
                                  }
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  width: 24,
                                  height: 24,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(24),
                                    child: Image.network(
                                      "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/l9qm4tj8_expires_30_days.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 24,
                                height: 24,
                                child: Image.network(
                                  "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/8503aywm_expires_30_days.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Title + date
                        Container(
                          margin: const EdgeInsets.only(bottom: 16, left: 12),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 15),
                                child: const Text(
                                  "Latest News",
                                  style: TextStyle(
                                    color: Color(0xFF2C3439),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Text(
                                "April 29, 2024",
                                style: TextStyle(
                                  color: Color(0xFF2C3439),
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Search bar
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color(0xFFFFFFE3),
                    ),
                    margin: const EdgeInsets.only(
                        bottom: 12, left: 12, right: 12),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          width: 24,
                          height: 24,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.network(
                              "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/go4ysjno_expires_30_days.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            style: const TextStyle(
                              color: Color(0xFF2C3439),
                              fontSize: 10,
                            ),
                            onChanged: (value) {
                              setState(() {
                                textField1 = value;
                              });
                            },
                            decoration: const InputDecoration(
                              hintText: "Search the news",
                              isDense: true,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 19),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              filled: false,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // News cards
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildNewsCard(
                          imageUrl:
                              "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/qnib31od_expires_30_days.png",
                          logoUrl:
                              "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/yetb7le0_expires_30_days.png",
                          menuIconUrl:
                              "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/b6x8yy7p_expires_30_days.png",
                          source: "Panay News",
                          time: "2 min ago",
                          headline:
                              "JUST IN: Iloilo City logs 1st pertussis death",
                        ),
                        _buildNewsCard(
                          imageUrl:
                              "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/nzjlcjam_expires_30_days.png",
                          logoUrl:
                              "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/kr0kaz8i_expires_30_days.png",
                          menuIconUrl:
                              "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/g3kv3vac_expires_30_days.png",
                          source: "Aksyon Radyo Iloilo",
                          time: "2 min ago",
                          headline:
                              "Over 19,000 job vacancies await on Labor Day Job Fair",
                        ),
                        _buildNewsCard(
                          imageUrl:
                              "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/ascaopsb_expires_30_days.png",
                          logoUrl:
                              "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/hql6rx8u_expires_30_days.png",
                          menuIconUrl:
                              "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/4kkfr8bz_expires_30_days.png",
                          source: "Daily Guardian",
                          time: "2 min ago",
                          headline:
                              "JUST IN: Face-to-face classes in Iloilo City are suspended on Monday and Tuesday, May 20 and 21, 2024.",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNewsCard({
    required String imageUrl,
    required String logoUrl,
    required String menuIconUrl,
    required String source,
    required String time,
    required String headline,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFFFFFE3),
      ),
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 24),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // News image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              height: 199,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),
          // Source + time + menu icon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.network(
                    logoUrl,
                    width: 24,
                    height: 24,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    source,
                    style: const TextStyle(
                      color: Color(0xFF2C3439),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    time,
                    style: const TextStyle(
                      color: Color(0xFF2C3439),
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
              Image.network(
                menuIconUrl,
                width: 16,
                height: 16,
                fit: BoxFit.fill,
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Headline
          Text(
            headline,
            style: const TextStyle(
              color: Color(0xFF2C3439),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}