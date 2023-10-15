package Classes;

import java.awt.Color;

import Enumerators.TypeOfBody;
import Enumerators.TypeOfFuel;
import Enumerators.TypeOfGearBox;
import Interfaces.IFuelStation;
import Interfaces.IWipingCar;

public class PickUp extends Car implements IFuelStation, IWipingCar {
   private float loadCapacity;

   public PickUp(String make, String model, Color color, int numOfWheels,
         TypeOfGearBox typeOfGearBox, TypeOfFuel typeOfFuel, float engineCapacity, float loadCapacity) {
      super(make, model, color, TypeOfBody.PICKUP, numOfWheels, typeOfGearBox, typeOfFuel, engineCapacity);
      this.loadCapacity = loadCapacity;
   }

   @Override
   public void fuel() {
      throw new UnsupportedOperationException("Unimplemented method 'fuel'");
   }

   @Override
   public void wipWindShield() {
      throw new UnsupportedOperationException("Unimplemented method 'wipWindShield'");
   }

   @Override
   public void wipHeadLights() {
      throw new UnsupportedOperationException("Unimplemented method 'wipHeadLights'");
   }

   @Override
   public void wipMirrors() {
      throw new UnsupportedOperationException("Unimplemented method 'wipMirrors'");
   }
}
