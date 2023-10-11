package Fabric;

import Interface.IGameItem;
import Product.Gold;

// Генератор золота, наследует от абстрактного генератора
public class GoldGenerator extends ItemGenerator {

   @Override
   public IGameItem createItem() {
      return new Gold();
   }

}
