import 'animals.dart';
import 'transports.dart';
import 'interfaces.dart';
import 'mixins.dart';

void main() {
  Animal cat = Cat('Tom', 2);

  Reptile snake = Snake('Shaggy', 8);

  List<Drawable> drawables = [snake, cat, Plane(), Parrot('Gena', 3), Car()];
  for (Drawable d in drawables) {
    drawObject(d);
    if (d is Animal) {
      d.sleep();
      d.makeSound();
    }
    if (d is Playable) {
      Playable p = d as Playable;
      p.play();
    }
    if (d is Fly) {
      (d as Fly).fly(d.runtimeType.toString());
    }
    if (d is Jump) {
      (d as Jump).jump();
    }
  }
}

void drawObject(Drawable d) {
  d.draw();
  print(d.draw3D('plastic'));
}
