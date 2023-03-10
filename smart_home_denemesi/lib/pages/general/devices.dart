import 'package:flutter/material.dart';
import 'package:smart_home_denemesi/pages/device_page/living_room.dart';

class DevicesPage extends StatefulWidget {
  const DevicesPage({super.key});

  @override
  State<DevicesPage> createState() => _DevicesPageState();
}

class _DevicesPageState extends State<DevicesPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Center(
                  child: Text(
                    "Air Prurifier",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
                  ),
                ),
              ),
              //Tab Bar
              TabBar(
                padding: EdgeInsets.only(top: 0, bottom: 15, left: 40, right: 40),
                labelColor: Colors.black,
                labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: "Living Room",
                  ),
                  Tab(
                    text: "Bedroom",
                  ),
                  Tab(
                    text: "Kitchen",
                  ),
                ],
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: TabBarView(
                  children: [
                    Devices_LivingRoom_Page(),
                    Container(),
                    Container(),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
