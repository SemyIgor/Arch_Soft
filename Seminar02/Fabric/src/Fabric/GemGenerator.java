package Fabric;

import Interface.IGameItem;
import Product.Gems;

public class GemGenerator extends ItemGenerator {

   @Override
   public IGameItem createItem() {
      return new Gems();
   }

}
