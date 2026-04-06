import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:revel/widgets/bottom_nav_bar.dart';
import 'dart:convert';
import 'dart:async';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});
  @override
  MainMenuState createState() => MainMenuState();
}

class MainMenuState extends State<MainMenu> {
  // Weather state
  double? _temperature;
  double? _feelsLike;
  String _weatherDesc = '';
  String _cityName = '';
  String _dateStr = '';
  bool _isLoadingWeather = true;
  String _weatherError = '';
  static const String _apiKey = '4bded94668448fb00b1d291e93dda329';

  // News state
  List<Map<String, dynamic>> _newsList = [];
  bool _isLoadingNews = true;
  String _newsError = '';
  static const String _newsApiKey = '7fc42a751ffdc4b471dbf176ae64b1b6';

  @override
  void initState() {
    super.initState();
    _fetchWeather();
    _setDate();
    _fetchNews();
  }

  void _setDate() {
    final now = DateTime.now();
    final days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    final months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    setState(() {
      _dateStr =
          '${days[now.weekday - 1]} ${now.day} ${months[now.month - 1]}';
    });
  }

  Future<void> _fetchWeather() async {
    try {
      print('--- Starting weather fetch ---');

      double lat = 10.7202;
      double lon = 122.5621;

      try {
        bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
        print('Location service enabled: $serviceEnabled');

        if (serviceEnabled) {
          LocationPermission permission = await Geolocator.checkPermission();
          print('Initial permission: $permission');

          if (permission == LocationPermission.denied) {
            permission = await Geolocator.requestPermission();
            print('Permission after request: $permission');
          }

          if (permission != LocationPermission.denied &&
              permission != LocationPermission.deniedForever) {
            print('Getting position...');
            final position = await Geolocator.getCurrentPosition(
              desiredAccuracy: LocationAccuracy.low,
            ).timeout(
              const Duration(seconds: 10),
              onTimeout: () {
                print('Location timed out, using Iloilo City fallback');
                throw Exception('timeout');
              },
            );
            lat = position.latitude;
            lon = position.longitude;
            print('Got real position: $lat, $lon');
          }
        }
      } catch (locationError) {
        print('Location error, using Iloilo City fallback: $locationError');
      }

      final url =
          'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$_apiKey&units=metric';

      print('Fetching weather from: $url');

      final response = await http.get(Uri.parse(url)).timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          throw Exception('Weather API timed out.');
        },
      );

      print('Response status: ${response.statusCode}');

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          _temperature = (data['main']['temp'] as num).toDouble();
          _feelsLike = (data['main']['feels_like'] as num).toDouble();
          _weatherDesc = data['weather'][0]['description'];
          _cityName = data['name'];
          _isLoadingWeather = false;
        });
        print('Weather loaded: $_temperature°C in $_cityName');
      } else {
        setState(() {
          _weatherError = 'API Error ${response.statusCode}';
          _isLoadingWeather = false;
        });
      }
    } catch (e) {
      print('Fatal error: $e');
      setState(() {
        _weatherError = 'Failed to load weather. Tap to retry.';
        _isLoadingWeather = false;
      });
    }
  }

  Future<void> _fetchNews() async {
    try {
      print('--- Fetching Iloilo news ---');

      final url =
          'https://gnews.io/api/v4/search?q=Iloilo&lang=en&country=ph&max=5&apikey=$_newsApiKey';

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
          _newsList = articles.map((article) {
            return {
              'title': article['title'] ?? 'No title',
              'description': article['description'] ?? '',
              'source': article['source']['name'] ?? 'Unknown',
              'publishedAt': article['publishedAt'] ?? '',
              'url': article['url'] ?? '',
              'image': article['image'] ?? '',
            };
          }).toList();
          _isLoadingNews = false;
        });
        print('News loaded: ${_newsList.length} articles');
      } else {
        setState(() {
          _newsError = 'Failed to load news: ${response.statusCode}';
          _isLoadingNews = false;
        });
      }
    } catch (e) {
      print('News error: $e');
      setState(() {
        _newsError = 'Failed to load news.';
        _isLoadingNews = false;
      });
    }
  }

  String _getWeatherMessage() {
    if (_temperature == null) return 'Loading weather...';
    if (_temperature! >= 38) return 'Today is soaking hot! Stay hydrated!';
    if (_temperature! >= 30) return 'It\'s warm today. Stay cool!';
    if (_temperature! >= 20) return 'Pleasant weather today. Enjoy!';
    if (_temperature! >= 10) return 'It\'s a bit cool today. Dress warm!';
    return 'It\'s cold today. Bundle up!';
  }

  Color _getTempColor() {
    if (_temperature == null) return const Color(0xFF2C3439);
    if (_temperature! >= 35) return const Color(0xFFB94429);
    if (_temperature! >= 25) return const Color(0xFFE09336);
    return const Color(0xFF4B8A7E);
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
    final now = DateTime.now();
    final timeStr =
        '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';

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
                        // ── Weather Header ──
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
                                      Text(
                                        timeStr,
                                        style: const TextStyle(
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
                                  child: _isLoadingWeather
                                      ? const Row(
                                          children: [
                                            SizedBox(
                                              width: 16,
                                              height: 16,
                                              child: CircularProgressIndicator(
                                                strokeWidth: 2,
                                                color: Color(0xFFB94429),
                                              ),
                                            ),
                                            SizedBox(width: 8),
                                            Text(
                                              'Loading weather...',
                                              style: TextStyle(
                                                color: Color(0xFF2C3439),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        )
                                      : _weatherError.isNotEmpty
                                          ? GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  _isLoadingWeather = true;
                                                  _weatherError = '';
                                                });
                                                _fetchWeather();
                                              },
                                              child: Text(
                                                '$_weatherError — Tap to retry',
                                                style: const TextStyle(
                                                  color: Color(0xFFB94429),
                                                  fontSize: 12,
                                                ),
                                              ),
                                            )
                                          : Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              right: 8),
                                                      width: 24,
                                                      height: 24,
                                                      child: Image.network(
                                                        "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/omc3gko5_expires_30_days.png",
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              right: 11),
                                                      child: const Text(
                                                        "Feels like ",
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF2C3439),
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      '${_feelsLike?.toStringAsFixed(0)}°C',
                                                      style: TextStyle(
                                                        color: _getTempColor(),
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 22),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          margin: const EdgeInsets
                                                              .only(right: 4),
                                                          width: 12,
                                                          height: 12,
                                                          child: Image.network(
                                                            "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/TRvBR2s2yD/1xy3hg1l_expires_30_days.png",
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                        Text(
                                                          '${_temperature?.toStringAsFixed(0)}° C',
                                                          style:
                                                              const TextStyle(
                                                            color: Color(
                                                                0xFF2C3439),
                                                            fontSize: 8,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
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

                                // Forecast row
                                Container(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          _isLoadingWeather
                                              ? 'Getting your location...'
                                              : _weatherError.isNotEmpty
                                                  ? _weatherError
                                                  : _getWeatherMessage(),
                                          style: const TextStyle(
                                            color: Color(0xFF2C3439),
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _isLoadingWeather = true;
                                            _weatherError = '';
                                          });
                                          _fetchWeather();
                                        },
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  right: 6),
                                              child: Text(
                                                _cityName.isNotEmpty
                                                    ? _cityName
                                                    : 'See weekly forecast',
                                                style: const TextStyle(
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
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // ── Search Bar ──
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
                                      margin: const EdgeInsets.only(right: 12),
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

                        // ── Shortcuts ──
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

                        // ── Emergency Services ──
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

                        // ── Breaking News ──
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
                                // Header row
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

                                // News content
                                if (_isLoadingNews)
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: const Color(0xFFFFFFE3),
                                    ),
                                    padding: const EdgeInsets.all(24),
                                    width: double.infinity,
                                    child: const Center(
                                      child: CircularProgressIndicator(
                                        color: Color(0xFFB94429),
                                        strokeWidth: 2,
                                      ),
                                    ),
                                  )
                                else if (_newsError.isNotEmpty)
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: const Color(0xFFFFFFE3),
                                    ),
                                    padding: const EdgeInsets.all(16),
                                    width: double.infinity,
                                    child: Column(
                                      children: [
                                        Text(
                                          _newsError,
                                          style: const TextStyle(
                                            color: Color(0xFF777777),
                                            fontSize: 12,
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _isLoadingNews = true;
                                              _newsError = '';
                                            });
                                            _fetchNews();
                                          },
                                          child: const Text(
                                            'Tap to retry',
                                            style: TextStyle(
                                              color: Color(0xFFB94429),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                else
                                  Column(
                                    children: _newsList
                                        .map((news) => _buildNewsCard(news))
                                        .toList(),
                                  ),
                              ],
                            ),
                          ),
                        ),

                        // ── About Iloilo City ──
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

              // ── Bottom Nav Bar ──
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

  // ── Helper Widgets ──

  Widget _buildNewsCard(Map<String, dynamic> news) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFFFFFE3),
      ),
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // News image
          if (news['image'] != null &&
              news['image'].toString().isNotEmpty)
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              height: 160,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  news['image'],
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: const Color(0xFFCCCCCC),
                      child: const Center(
                        child: Icon(
                          Icons.image_not_supported,
                          color: Color(0xFF999999),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

          // Source and time row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.newspaper,
                    size: 16,
                    color: Color(0xFF2C3439),
                  ),
                  const SizedBox(width: 6),
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

          // Title
          Text(
            news['title'],
            style: const TextStyle(
              color: Color(0xFF2C3439),
              fontSize: 16,
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