import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF8F5),
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),

            /// Breaking News Title
            _sectionHeader(
              title: "Breaking News",
              onViewAll: () {},
            ),

            const SizedBox(height: 12),

            /// Breaking News Slider
            _breakingNewsSlider(),

            const SizedBox(height: 8),

            /// Dots Indicator
            _dotsIndicator(),

            const SizedBox(height: 24),

            /// Recommendation Title
            _sectionHeader(
              title: "Recommendation",
              onViewAll: () {},
            ),

            const SizedBox(height: 16),

            /// Recommendation List
            _recommendationItem(
              imagePath: "assets/images/reco1.png",
              title: "Highguard boss says the player count “doesn’t matter”",
              source: "Dexerto",
              time: "19:40",
            ),

            const SizedBox(height: 16),

            _recommendationItem(
              imagePath: "assets/images/reco2.png",
              title: "Teamfight Tactics patch 16.4 - Teamfight Tactics",
              source: "Leagueoflegends.com",
              time: "19:00",
            ),
            const SizedBox(height: 16),
            _recommendationItem(
              imagePath: "assets/images/reco1.png",
              title: "Highguard boss says the player count “doesn’t matter”",
              source: "Dexerto",
              time: "19:40",
            ),

            const SizedBox(height: 16),

            _recommendationItem(
              imagePath: "assets/images/reco2.png",
              title: "Teamfight Tactics patch 16.4 - Teamfight Tactics",
              source: "Leagueoflegends.com",
              time: "19:00",
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  /// ================= AppBar =================
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xffFFF8F5),
      leading: IconButton(
        icon: const Icon(Icons.menu, color: Colors.black),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search, color: Colors.black),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.notifications_none, color: Colors.black),
          onPressed: () {},
        ),
      ],
    );
  }

  /// ================= Section Header =================
  Widget _sectionHeader({
    required String title,
    required VoidCallback onViewAll,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: onViewAll,
          child: const Text(
            "View All",
            style: TextStyle(
              color: Colors.red,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }

  /// ================= Breaking News Slider =================
  Widget _breakingNewsSlider() {
    return SizedBox(
      height: 190,
      child: PageView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  /// Image
                  Image.asset(
                    "assets/images/bitcoin.jpeg",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  /// Dark Overlay
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),

                  /// Content
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            "CNBC",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "Bitcoin breaks below \$73,000 to lowest since November 2024 as heavy selling resumes - CNBC",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          "Liz Napolitano • 19:05",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  /// ================= Dots Indicator =================
  Widget _dotsIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        5,
            (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: index == 0 ? 16 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: index == 0 ? Colors.red : Colors.grey.shade300,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }

  /// ================= Recommendation Item =================
  Widget _recommendationItem({
    required String imagePath,
    required String title,
    required String source,
    required String time,
  }) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            imagePath,
            width: 90,
            height: 90,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                "$source • $time",
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
