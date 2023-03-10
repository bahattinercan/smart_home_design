import 'package:flutter/material.dart';
import 'package:smart_home_denemesi/pages/home_page/all_devices.dart';
import 'package:smart_home_denemesi/pages/home_page/bedroom.dart';
import 'package:smart_home_denemesi/pages/home_page/kitchen.dart';
import 'package:smart_home_denemesi/pages/home_page/living_room.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: SafeArea(
          child: Column(
            children: [
// app bar
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey[900],
                          ),
                          height: 60,
                          width: 60,
                          child: Icon(
                            Icons.person_rounded,
                            size: 45,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Hi Bahattin!",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(
                                "Monday, 24 July",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey[900],
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_rounded),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              // overview
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                height: 165,
                decoration: BoxDecoration(
                  color: Colors.lime.shade600,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "24°C",
                              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 36),
                            ),
                            Icon(
                              Icons.cloud_rounded,
                              size: 36,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Divider(thickness: 1),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "82 AQI",
                                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                                ),
                                Text(
                                  "Home PM2.5",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "48.2%",
                                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                                ),
                                Text(
                                  "Home Humidity",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Excellent",
                                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                                ),
                                Text(
                                  "Air Quality",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // tab widget
              TabBar(labelColor: Colors.black, labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold), tabs: [
                Tab(
                  text: "All Devices",
                ),
                Tab(
                  text: "Living Room",
                ),
                Tab(
                  text: "Bedroom",
                ),
                Tab(
                  text: "Kitchen",
                ),
              ]),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: TabBarView(
                  children: [AllDevicesWidget(), LivingRoomWidget(), BedroomWidget(), KitchenWidget()],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
