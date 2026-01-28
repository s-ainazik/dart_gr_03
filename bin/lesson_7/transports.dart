import 'interfaces.dart';
import 'mixins.dart';

abstract class Transport implements Drawable {}

class Car extends Transport {
  @override
  void draw() {
    print('🏎️');
  }

  @override
  String draw3D(String material) {
    return '3D car model made of $material';
  }
}

class Plane extends Transport with Fly {
  @override
  void draw() {
    print('✈️');
  }

  @override
  String draw3D(String material) {
    return '3D plane model made of $material';
  }
}