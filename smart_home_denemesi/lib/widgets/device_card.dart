import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DeviceCardItem extends StatefulWidget {
  final String deviceName;
  final String numberOfDevices;
  final deviceIcon;
  final bool isConnectedWithWifi;
  bool isOpen;

  DeviceCardItem({
    super.key,
    required this.deviceName,
    required this.numberOfDevices,
    this.deviceIcon,
    required this.isConnectedWithWifi,
    required this.isOpen,
  });

  @override
  State<DeviceCardItem> createState() => _DeviceCardItemState();
}

class _DeviceCardItemState extends State<DeviceCardItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(widget.deviceIcon),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(90),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    widget.isConnectedWithWifi ? Icons.wifi_rounded : Icons.bluetooth_rounded,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(widget.deviceName),
            SizedBox(height: 5),
            Text(widget.numberOfDevices),
            SizedBox(height: 10),
            Divider(
              thickness: 1,
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.isOpen ? "On" : "Off",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                CupertinoSwitch(
                  value: widget.isOpen,
                  onChanged: (value) {
                    setState(() {
                      widget.isOpen = value;
                    });
                  },
                ),
              ],
            ),
          ]),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.blueGrey[50],
        ),
      ),
    );
  }
}
