//*---Inheritance---//

class PKWidget implements Rendering {
  String? text;
  void enbled() {
    print('Enable');
  }

  void disable() {
    print('Disable');
  }

  @override
  void render() {}
}

//*---Inheritance---//

//*---Polimorphism---//

abstract class Rendering {
  void render();
}

class PKtext extends PKWidget {
  @override
  void render() {
    print('Rendering textbox');
  }
}

class PKButton extends PKWidget {
  @override
  void render() {
    print('Rendering Button');
  }
}

//*---Polimorphism---//

