package Fabric;

import Interface.IGameItem;
import Product.Silver;

public class SilverGenerator extends ItemGenerator {

   @Override
   public IGameItem createItem() {
      return new Silver();
   }

}
