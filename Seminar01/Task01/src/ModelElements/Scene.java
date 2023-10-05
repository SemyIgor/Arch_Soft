package ModelElements;

import java.util.List;

public class Scene {
   public int id;
   public List<PoligonalModel> Models;
   public List<Flash> Flashes;
   public List<Camera> cameras;

   public Scene(int id, List<PoligonalModel> models, List<Flash> flashes, List<Camera> cameras) throws Exception {
      this.id = id;

      if (models.size() > 0) {
         this.Models = models;
      } else {
         throw new Exception("Должна быть одна модель");
      }
      Flashes = flashes;

      if (cameras.size() > 0) {
         this.cameras = cameras;
      } else {
         throw new Exception("Должна быть одна камера");
      }
   }

   public <T> T method1(T flash) {
      return flash;
   }

   public <T, E> T method2(T Model, E Flash) {
      return Model;
   }

   // /**
   // * Заглушка
   // *
   // * @param t
   // * @return
   // */
   // public Type1 method1(Type1 t) {
   // return t;
   // }

   // /**
   // * Заглушка
   // * @param t1
   // * @param t2
   // * @return
   // */
   // public Type1 method1(Type1 t1, Type2 t2) {
   // return t1;
   // }

}
