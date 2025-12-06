import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/globals.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  int _currentIndex = 2; // Bookmark tab is selected by default

  void _onTabTapped(int index) {
    if (index == _currentIndex) return; // Don't do anything if same tab is tapped

    // Update UI state immediately to show visual feedback
    setState(() {
      _currentIndex = index;
    });

    // Handle navigation after UI update
    if (index == 0) {
      // Navigate to Doa screen (placeholder for now)
      Future.delayed(const Duration(milliseconds: 100), () {
        if (mounted) {
          Navigator.pop(context);
        }
      });
    } else if (index == 1) {
      // Navigate to Quran screen (go back to home)
      Future.delayed(const Duration(milliseconds: 100), () {
        if (mounted) {
          Navigator.pop(context);
        }
      });
    }
    // index == 2 is already on bookmark screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: _appBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 24),
            _actionButtons(),
            const SizedBox(height: 16),
            Expanded(
              child: _bookmarkList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  AppBar _appBar(BuildContext context) => AppBar(
    backgroundColor: background,
    automaticallyImplyLeading: false,
    elevation: 0,
    title: Row(
      children: [
        IconButton(
          onPressed: (() {
            Navigator.pop(context);
          }),
          icon: SvgPicture.asset('assets/svgs/back-icon.svg'),
        ),
        const SizedBox(width: 24),
        Text(
          'Bookmarks',
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: titleColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: (() {}),
          icon: SvgPicture.asset('assets/svgs/search-icon.svg'),
        ),
      ],
    ),
  );

  Row _actionButtons() {
    return Row(
      children: [
        // Add Collection Button
        Expanded(
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              // border: Border.all(color: Colors.grey.withOpacity(0.3)),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/bookmark-icon.svg',
                      color: titleColor,
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Add collection',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: titleColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

        const SizedBox(width: 12),

        // Sort Button
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            // border: Border.all(color: Colors.grey.withOpacity(0.3)),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {},
              child: Center(
                child: SvgPicture.asset(
                  'assets/svgs/sort-icon.svg', // Menggunakan existing icon sebagai sort
                  color: titleColor,
                  width: 20,
                  height: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  ListView _bookmarkList() {
    // Sample data untuk bookmark list
    final bookmarks = [
      {
        'title': 'Al-Fatihah',
        'subtitle': 'Ayat 1-7',
        'type': 'Surah',
        'icon': 'assets/svgs/quran-icon.svg',
      },
      {
        'title': 'Ar-Rahman',
        'subtitle': 'Ayat 1-10',
        'type': 'Surah',
        'icon': 'assets/svgs/quran-icon.svg',
      },
      {
        'title': 'Al-Ikhlas',
        'subtitle': 'Ayat 1-4',
        'type': 'Surah',
        'icon': 'assets/svgs/quran-icon.svg',
      },
    ];

    return ListView.separated(
      itemCount: bookmarks.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final bookmark = bookmarks[index];
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            // border: Border.all(color: Colors.grey.withOpacity(0.3)),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black.withOpacity(0.05),
            //     blurRadius: 4,
            //     offset: const Offset(0, 2),
            //   ),
            // ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: titleColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          bookmark['icon']!,
                          color: titleColor,
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            bookmark['title']!,
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            bookmark['subtitle']!,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/svgs/bookmark-icon.svg',
                        color: titleColor,
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  BottomNavigationBar _bottomNavigationBar() => BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    currentIndex: _currentIndex,
    onTap: _onTabTapped,
    items: [
      _bottomBarItem(icon: "assets/svgs/doa-icon.svg", label: "Doa"),
      _bottomBarItem(icon: "assets/svgs/quran-icon.svg", label: "Quran"),
      _bottomBarItem(icon: "assets/svgs/bookmark-icon.svg", label: "Bookmark"),
    ],
  );

  BottomNavigationBarItem _bottomBarItem({
    required String icon,
    required String label,
  }) => BottomNavigationBarItem(
    icon: SvgPicture.asset(icon, color: Colors.grey),
    activeIcon: SvgPicture.asset(icon, color: titleColor),
    label: label,
  );
}
