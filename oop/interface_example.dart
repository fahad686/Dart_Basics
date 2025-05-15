// Any class in Dart can act like an interface

class Camera {
  void takePhoto() {
    print('Taking photo...');
  }
}

class GPS {
  void getLocation() {
    print('Fetching location...');
  }
}

// Implements two "interface-like" classes
class Smartphone implements Camera, GPS {
  @override
  void takePhoto() {
    print('Smartphone taking photo');
  }

  @override
  void getLocation() {
    print('Smartphone fetching GPS location');
  }
}
