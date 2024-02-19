import 'package:flutter/material.dart';
import 'package:smart_home_denemesi/models/device.dart';
import 'package:smart_home_denemesi/widgets/device_card.dart';

class KitchenWidget extends StatefulWidget {
  const KitchenWidget({super.key});

  @override
  State<KitchenWidget> createState() => _KitchenWidgetState();
}

class _KitchenWidgetState extends State<KitchenWidget> {
  List<Device> devices = [
    Device(
      deviceName: "Smart Lighting",
      numberOfDevices: "4 Lamps",
      deviceIcon: Icons.light_rounded,
      isConnectedWithWifi: false,
      isOpen: true,
    ),
    Device(
      deviceName: "Air Purifier",
      numberOfDevices: "1 Device",
      deviceIcon: Icons.air_rounded,
      isConnectedWithWifi: true,
      isOpen: false,
    ),
    Device(
      deviceName: "Smart TV",
      numberOfDevices: "1 Device",
      deviceIcon: Icons.tv_rounded,
      isConnectedWithWifi: true,
      isOpen: false,
    ),
    Device(
      deviceName: "BabyCam",
      numberOfDevices: "3 Device",
      deviceIcon: Icons.camera_rounded,
      isConnectedWithWifi: false,
      isOpen: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1 / 1.12),
      itemBuilder: (context, index) {
        return DeviceCardItem(
            deviceName: devices[index].deviceName,
            numberOfDevices: devices[index].numberOfDevices,
            deviceIcon: devices[index].deviceIcon,
            isConnectedWithWifi: devices[index].isConnectedWithWifi,
            isOpen: devices[index].isOpen);
      },
    );
  }
}
