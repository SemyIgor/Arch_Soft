package Fabric;

import Interface.IGameItem;
import Product.Ruby;

public class RubyGenerator extends ItemGenerator {

   @Override
   public IGameItem createItem() {
      return new Ruby();
   }

}
