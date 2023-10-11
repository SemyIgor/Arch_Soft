package Fabric;

import Interface.IGameItem;
import Product.Artefacts;

public class ArtefactsGenerator extends ItemGenerator {

   @Override
   public IGameItem createItem() {
      return new Artefacts();
   }

}
