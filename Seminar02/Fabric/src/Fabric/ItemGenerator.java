package Fabric;

import Interface.IGameItem;

// Абстрактный генератор предметов
public abstract class ItemGenerator {
   public abstract IGameItem createItem();

   public void openReward() {
      createItem().open();
   };
}
