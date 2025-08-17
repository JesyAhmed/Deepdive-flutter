abstract class animal{
  String name;
  animal(this.name);
  void makesound();
  void displayinfo (){ print("animal : $name");}
}

class lion extends animal {
  lion(String name) :super (name);
  @override
  void makesound(){
    print("Roar! ");
  }
  }

class elephent extends animal{
  elephent(String name) :super (name);
  @override
  void makesound(){
    print("Trumpt! ");
  }
}

class cow extends animal{
  cow(String name) :super(name);
  @override
  void makesound(){
    print("mooo!");
  
  }
}
class zookeeper {
  String keeperName;
  zookeeper(this.keeperName);
  void displayInfo (){
    print("zookeeper : $keeperName");
  }

  List< animal> _Animals=[];
}

void main(){
  zookeeper zk =zookeeper("Jessy");
  zk._Animals.add(lion('simba'));
  zk._Animals.add(elephent("dambo"));
  zk._Animals.add(cow("Otis"));
  zk.displayInfo();
  
  for (var a in zk._Animals){
    a.displayinfo();
    a.makesound();
   }

}