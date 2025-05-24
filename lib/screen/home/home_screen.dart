// home_screen.dart
import 'package:flutter/material.dart';
import '../common/contact_us_screen.dart';
import '../common/service_screen.dart';
import '../common/gallery_screen.dart';
import '../common/testimonials_screen.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/carousel_widget.dart';
import '../widgets/status_widgets.dart';
import '../widgets/who_we_are.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  // List of screens corresponding to each bottom nav item
  final List<Widget> _screens = [
    // Home content
    SingleChildScrollView(
      child: Column(
        children: [
          const CarouselWidget(),
          const StatsWidget(),
          const WhoWeAreSection(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '5-Stage Learning Demo',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    color: Colors.grey[300],
                    child: const Center(
                      child: Icon(
                        Icons.play_circle_fill,
                        size: 50,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    ),
    // Services screen
    const ServicesScreen(),
    // Gallery screen
    const GalleryScreen(),
    // Testimonials screen
    const TestimonialsScreen(),
    // Contact us screen
    const ContactUsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Port-O-Lab & Guest Speaker'),
        actions: [
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      // Show the current screen based on index
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
