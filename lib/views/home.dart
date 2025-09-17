import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_app/common/app_colors.dart';
import 'package:pharmacy_app/custom_widget/footer_bar.dart';

import '../custom_widget/custom_Text.dart';
import '../custom_widget/group_button_tile.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = -1;

  final items = [
    {
      'icon': Icons.calendar_month,
      'title': 'Booked Appointment',
      'subtitle': "I'm here to Book Appointment",
    },
    {
      'icon': Icons.directions_walk,
      'title': 'Walk In',
      'subtitle': 'I\'m here to Walk In',
    }
  ];

  final walkList = [
    {
      'icon': Icons.mobile_friendly,
      'title': 'Register via Mobile',
      'subtitle': "Use your mobile number",
    },
    {
      'icon': Icons.email,
      'title': 'Register via Email',
      'subtitle': 'Use your Email',
    },
    {
      'icon': Icons.file_copy,
      'title': 'Register without Mobile/Email',
      'subtitle': 'Non mobile User registration',
    }
  ];

  final appointmentList = [
    {
      'icon': Icons.search,
      'title': 'Search Appointment',
      'subtitle': 'Find an existing booking',
    },
    {
      'icon': Icons.add_circle,
      'title': 'New Appointment',
      'subtitle': 'Book a new appointment',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      bottomNavigationBar: FooterBar(),
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Image.asset("assets/images/add.png",
          width: 60,height: 35,
          color: primaryColors,)
      ),
      body: Row(
        children: [
          /// LEFT HALF
          SizedBox(
            width: screenWidth * 0.5,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomText(
                    customText: 'Welcome to \nPharmacy app',
                    customColor: primaryColor,
                    customFontSize: 45,
                  ),
                  const SizedBox(height: 30),

                  ...List.generate(items.length, (index) {
                    final item = items[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 100.0),
                      child: GroupButtonTile(
                        icon: Icon(item['icon'] as IconData),
                        title: item['title'] as String,
                        subtitle: item['subtitle'] as String,
                        selected: selectedIndex == index,
                        selectedColor: primaryColors,
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),

          /// RIGHT HALF (dynamic based on left selection)
          SizedBox(
            width: screenWidth * 0.5,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (selectedIndex == 1) ...[
                    // WALK IN selected
                    CustomText(
                      customText: 'Walk In',
                      customColor: primaryColor,
                      customFontSize: 45,
                    ),
                    const SizedBox(height: 20),
                    CustomText(
                      customText: 'Please choose how you\'d like to register:',
                      customColor: Colors.black38,
                      customFontSize: 17,
                    ),
                    const SizedBox(height: 12),
                    ...List.generate(walkList.length, (index) {
                      final item = walkList[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 100.0),
                        child: GroupButtonTile(
                          icon: Icon(item['icon'] as IconData),
                          title: item['title'] as String,
                          subtitle: item['subtitle'] as String,
                          selected: false,
                          selectedColor: primaryColors,
                          onTap: () {},
                        ),
                      );
                    }),
                  ] else if (selectedIndex == 0) ...[
                    // BOOKED APPOINTMENT selected
                    CustomText(
                      customText: 'Booked Appointment',
                      customColor: primaryColor,
                      customFontSize: 45,
                    ),
                    const SizedBox(height: 20),
                    ...List.generate(appointmentList.length, (index) {
                      final item = appointmentList[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 100.0),
                        child: GroupButtonTile(
                          icon: Icon(item['icon'] as IconData),
                          title: item['title'] as String,
                          subtitle: item['subtitle'] as String,
                          selected: false,
                          selectedColor: primaryColors,
                          onTap: () {},
                        ),
                      );
                    }),
                  ] else ...[
                    const SizedBox(height: 50),
                    CustomText(
                      customText: 'Select an option from the left',
                      customColor: Colors.black38,
                      customFontSize: 20,
                    ),
                  ]
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
