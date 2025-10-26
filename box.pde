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
  }

  void setup() {
    loadClothes();
  }
}

