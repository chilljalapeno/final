class Box {
  PVector position;
  PVector size;
  ArrayList<Clothes> clothes;
  ClothingType type;
  
  Box(PVector iPosition, PVector iSize, ClothingType iType) {
    position = iPosition;
    size = iSize;
    type = iType;
    clothes = new ArrayList<Clothes>();
  }

  void draw() {
    rect(this.position.x, this.position.y, this.size.x, this.size.y);
    for(int i=0; i<clothes.size(); i+=1) {
      clothes.get(i).draw();
    }
  }

  void loadClothes() {
    switch(type) {
      case hat:
        for(int i=1; i<3; i+=1) {
          String imageName = i + "/" + "hat" + ".png";
          Clothes cloth = new Clothes(  
            this.position,
            this.size,
            type,
            i-1,
            loadImage(imageName)
          );
          clothes.add(cloth);
        }
        break;
      case sweater:
        for(int i=1; i<=3; i+=1) {
          String imageName = i + "/" + "sweater" + ".png";
          Clothes cloth = new Clothes(  
            this.position,
            this.size,
            type,
            i-1,
            loadImage(imageName)
          );
          clothes.add(cloth);
        }
        break;
      case pants:
        for(int i=1; i<=3; i+=1) {
          String imageName = i + "/" + "pants" + ".png";
          Clothes cloth = new Clothes(  
            this.position,
            this.size,
            type,
            i-1,
            loadImage(imageName)
          );
          clothes.add(cloth);
        }
        break;
      case shoe:
        for(int i=1; i<=3; i+=1) {
          String imageName = i + "/" + "shoes" + ".png";
          Clothes cloth = new Clothes(  
            this.position,
            this.size,
            type,
            i-1,
            loadImage(imageName)
          );
          clothes.add(cloth);
        }
        break;
      default:
        for(int i=1; i<3; i+=1) {
          String imageName = i + "/" + "hat" + ".png";
          Clothes cloth = new Clothes(  
            this.position,
            this.size,
            type,
            i-1,
            loadImage(imageName)
          );
          clothes.add(cloth);
          break;
      }
    }
    print(clothes.size());
  }

  void setup() {
    loadClothes();
  }
}

class UI {
  Box[] boxes; 

  UI() {
    boxes = new Box[4];
  }

  void setup() {
    for(int i=0; i<boxes.length; i+=1) {
      switch(i) {
        case 0: 
          boxes[i] = new Box(
            new PVector((width-400)/5 * (i+1) + 100*i, height-200),
            new PVector(100, 100),
            ClothingType.shoe
          );   
          boxes[i].setup();
          break;
        case 1: 
          boxes[i] = new Box(
            new PVector((width-400)/5 * (i+1) + 100*i, height-200),
            new PVector(100, 100),
            ClothingType.hat
          );   
          boxes[i].setup();
          break;
        case 2: 
          boxes[i] = new Box(
            new PVector((width-400)/5 * (i+1) + 100*i, height-200),
            new PVector(100, 100),
            ClothingType.sweater
          );   
          boxes[i].setup();
          break;
        case 3: 
          boxes[i] = new Box(
            new PVector((width-400)/5 * (i+1) + 100*i, height-200),
            new PVector(100, 100),
            ClothingType.pants
          ); 
          boxes[i].setup();
          break;
      }
    }
  }

  void draw() {
    noFill();
    stroke(#FF0000);
    strokeWeight(5);
    for(int i=0; i<boxes.length; i+=1) {
      boxes[i].draw();
    }
  }
}
