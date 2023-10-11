package Fabric;

import Interface.IGameItem;
import Product.Emerald;

public class EmeraldGenerator extends ItemGenerator {

   @Override
   public IGameItem createItem() {
      return new Emerald();
   }

}
