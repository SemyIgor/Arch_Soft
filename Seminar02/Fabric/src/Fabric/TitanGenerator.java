package Fabric;

import Interface.IGameItem;
import Product.Titan;

public class TitanGenerator extends ItemGenerator {

   @Override
   public IGameItem createItem() {
      return new Titan();
   }

}
