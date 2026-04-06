import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class HomeBreakingNews extends StatefulWidget {
  const HomeBreakingNews({super.key});
  @override
  HomeBreakingNewsState createState() => HomeBreakingNewsState();
}

class HomeBreakingNewsState extends State<HomeBreakingNews> {
  String textField1 = '';
  List<Map<String, dynamic>> _allNews = [];
  List<Map<String, dynamic>> _filteredNews = [];
  bool _isLoading = true;
  String _newsError = '';
  String _dateStr = '';

  static const String _newsApiKey = '7fc42a751ffdc4b471dbf176ae64b1b6';

  @override
  void initState() {
    super.initState();
    _setDate();
    _fetchNews();
  }

  void _setDate() {
    final now = DateTime.now();
    final months = [
      'January', 'February', 'March', 'April', 'May', 'June',
      'July', 'August', 'September', 'October', 'November', 'December'
    ];
    setState(() {
      _dateStr = '${months[now.month - 1]} ${now.day}, ${now.year}';
    });
  }

  Future<void> _fetchNews() async {
    try {
      setState(() {
        _isLoading = true;
        _newsError = '';
      });

      print('--- Fetching Iloilo news for breaking news page ---');

      final url =
          'https://gnews.io/api/v4/search?q=Iloilo&lang=en&country=ph&max=10&apikey=$_newsApiKey';

      final response = await http.get(Uri.parse(url)).timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          throw Exception('News API timed out.');
        },
      );

      print('News response status: ${response.statusCode}');

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final articles = data['articles'] as List;

        setState(() {
          _allNews = articles.map((article) {
            return {
              'title': article['title'] ?? 'No title',
              'description': article['description'] ?? '',
              'source': article['source']['name'] ?? 'Unknown',
              'publishedAt': article['publishedAt'] ?? '',
              'url': article['url'] ?? '',
              'image': article['image'] ?? '',
            };
          }).toList();
          _filteredNews = List.from(_allNews);
          _isLoading = false;
        });
        print('News loaded: ${_allNews.length} articles');
      } else {
        setState(() {
          _newsError = 'Failed to load news: ${response.statusCode}';
          _isLoading = false;
        });
      }
    } catch (e) {
      print('News error: $e');
      setState(() {
        _newsError = 'Failed to load news. Tap to retry.';
        _isLoading = false;
      });
    }
  }

  void _onSearch(String query) {
    setState(() {
      textField1 = query;
      if (query.isEmpty) {
        _filteredNews = List.from(_allNews);
      } else {
        _filteredNews = _allNews.where((news) {
          final title = news['title'].toString().toLowerCase();
          final description = news['description'].toString().toLowerCase();
          final source = news['source'].toString().toLowerCase();
          final q = query.toLowerCase();
          return title.contains(q) ||
              description.contains(q) ||
              source.contains(q);
        }).toList();
      }
    });
  }

  String _timeAgo(String publishedAt) {
    try {
      final published = DateTime.parse(publishedAt);
      final now = DateTime.now();
      final diff = now.difference(published);
      if (diff.inMinutes < 60) return '${diff.inMinutes} min ago';
      if (diff.inHours < 24) return '${diff.inHours} hr ago';
      return '${diff.inDays} days ago';
    } catch (e) {
      return '';
    }
  }

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
                              // Refresh button
                              InkWell(
                                onTap: _fetchNews,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  child: Image.network(
                                    "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/8503aywm_expires_30_days.png",
                                    fit: BoxFit.fill,
                                  ),
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
                              Text(
                                _dateStr,
                                style: const TextStyle(
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
                            onChanged: _onSearch,
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
                        // Clear search button
                        if (textField1.isNotEmpty)
                          InkWell(
                            onTap: () {
                              setState(() {
                                textField1 = '';
                                _filteredNews = List.from(_allNews);
                              });
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(right: 12),
                              child: Icon(
                                Icons.close,
                                size: 16,
                                color: Color(0xFF2C3439),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),

                  // News content
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: _isLoading
                        ? Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xFFFFFFE3),
                            ),
                            padding: const EdgeInsets.all(48),
                            width: double.infinity,
                            child: const Center(
                              child: CircularProgressIndicator(
                                color: Color(0xFFB94429),
                                strokeWidth: 2,
                              ),
                            ),
                          )
                        : _newsError.isNotEmpty
                            ? Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xFFFFFFE3),
                                ),
                                padding: const EdgeInsets.all(24),
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    const Icon(
                                      Icons.wifi_off,
                                      color: Color(0xFF999999),
                                      size: 48,
                                    ),
                                    const SizedBox(height: 12),
                                    Text(
                                      _newsError,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Color(0xFF777777),
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    GestureDetector(
                                      onTap: _fetchNews,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 24,
                                          vertical: 10,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFB94429),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: const Text(
                                          'Retry',
                                          style: TextStyle(
                                            color: Color(0xFFFFFFE3),
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : _filteredNews.isEmpty
                                ? Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: const Color(0xFFFFFFE3),
                                    ),
                                    padding: const EdgeInsets.all(24),
                                    width: double.infinity,
                                    child: Column(
                                      children: [
                                        const Icon(
                                          Icons.search_off,
                                          color: Color(0xFF999999),
                                          size: 48,
                                        ),
                                        const SizedBox(height: 12),
                                        Text(
                                          'No news found for "$textField1"',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Color(0xFF777777),
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Results count
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 8),
                                        child: Text(
                                          textField1.isEmpty
                                              ? '${_filteredNews.length} articles about Iloilo'
                                              : '${_filteredNews.length} results for "$textField1"',
                                          style: const TextStyle(
                                            color: Color(0xFF777777),
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                      // News list
                                      ..._filteredNews
                                          .map((news) =>
                                              _buildNewsCard(news: news))
                                          .toList(),
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

  Widget _buildNewsCard({required Map<String, dynamic> news}) {
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
          if (news['image'] != null && news['image'].toString().isNotEmpty)
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                news['image'],
                height: 199,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 199,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFFCCCCCC),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.image_not_supported,
                        color: Color(0xFF999999),
                        size: 48,
                      ),
                    ),
                  );
                },
              ),
            ),

          const SizedBox(height: 12),

          // Source + time + menu icon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.newspaper,
                    size: 24,
                    color: Color(0xFF2C3439),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    news['source'],
                    style: const TextStyle(
                      color: Color(0xFF2C3439),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    _timeAgo(news['publishedAt']),
                    style: const TextStyle(
                      color: Color(0xFF2C3439),
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.more_vert,
                size: 16,
                color: Color(0xFF2C3439),
              ),
            ],
          ),

          const SizedBox(height: 8),

          // Headline
          Text(
            news['title'],
            style: const TextStyle(
              color: Color(0xFF2C3439),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          // Description
          if (news['description'] != null &&
              news['description'].toString().isNotEmpty) ...[
            const SizedBox(height: 6),
            Text(
              news['description'],
              style: const TextStyle(
                color: Color(0xFF777777),
                fontSize: 12,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ],
      ),
    );
  }
}