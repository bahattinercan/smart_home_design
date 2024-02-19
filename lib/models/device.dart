class Device {
  String deviceName;
  String numberOfDevices;
  dynamic deviceIcon;
  bool isConnectedWithWifi;
  bool isOpen;

  Device({
    required this.deviceName,
    required this.numberOfDevices,
    required this.deviceIcon,
    required this.isConnectedWithWifi,
    required this.isOpen,
  });
}
