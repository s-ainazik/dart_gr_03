import 'game_character.dart';
import 'boss.dart';
import 'rpg_game.dart';

abstract class Hero extends GameCharacter {
  SuperAbility ability;
  Hero(super.name, super.health, super.damage, this.ability);

  void attack(Boss boss) {
    boss.health -= damage;
  }

  void applySuperPower(Boss boss, List<Hero> heroes);

  @override
  String toString() {
    return '${this.runtimeType} ${super.toString()}';
  }
}

class Warrior extends Hero {
  Warrior(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.criticalDamage);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    int coeff = RpgGame.random.nextInt(3) + 2; // 2, 3, 4
    int criticalDamage = damage * coeff;
    boss.health -= criticalDamage;
    print('Warrior $name hits critically for $criticalDamage');
  }
}

class Magic extends Hero {
  Magic(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.boost);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    if (RpgGame.roundNumber <= 4) {
      int randomBoost = RpgGame.random.nextInt(16) + 15;
      for (var hero in heroes) {
        if (hero.health > 0 && hero != this) {
          // hero.health > 0 = жив
          hero.damage += randomBoost;
        }
      }
    }
  }
}

class Medic extends Hero {
  int healPoints;
  Medic(String name, int health, int damage, this.healPoints)
    : super(name, health, damage, SuperAbility.heal);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    for (var hero in heroes) {
      if (hero.health > 0 && hero != this) {
        // hero != this to not heal self
        hero.health += healPoints;
      }
    }
  }
}

class Berserk extends Hero {
  int blockedDamage = 0;
  Berserk(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.blockRevert);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    boss.health -= blockedDamage;
    print('Berserk $name reverted $blockedDamage damage back to Boss');
  }
}

class Golem extends Hero {
  Golem(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.accepting);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    // логика реализуется в Boss.attack
  }
}

class Lucky extends Hero {
  Lucky(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.lucky);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    // уклонение обрабатывается в Boss.attack
  }
}

class Witcher extends Hero {
  bool hasResurrected = false;

  Witcher(String name, int health)
    : super(name, health, 0, SuperAbility.resurrect);

  @override
  void attack(Boss boss) {
    // Witcher не атакует
  }

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    if (health > 0 && !hasResurrected) {
      for (var hero in heroes) {
        if (hero.health <= 0) {
          hero.health = health;
          health = 0;
          hasResurrected = true;
          print('Witcher $name sacrificed himself to resurrect ${hero.name}');
          break;
        }
      }
    }
  }
}

class Thor extends Hero {
  Thor(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.stun);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    if (RpgGame.random.nextBool()) {
      boss.isStunned = true;
      print('Thor $name stunned the boss!');
    }
  }
}
