package Fabric;

import Interface.IGameItem;
import Product.Adamantine;

public class AdamantineGenerator extends ItemGenerator {

   @Override
   public IGameItem createItem() {
      return new Adamantine();
   }

}
