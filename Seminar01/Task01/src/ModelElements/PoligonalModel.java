package ModelElements;

import java.util.ArrayList;
import java.util.List;

import Stuff.Point3D;

public class PoligonalModel {
   public List<Texture> Textures;
   public List<Poligon> Poligons;

   public PoligonalModel(List<Texture> Textures) {
      this.Poligons = new ArrayList<>();
      this.Textures = Textures;

      /* Сила связи 1..*, поэтому добавляем элемент */
      this.Poligons.add(new Poligon(new Point3D()));
   };

}
