package Classes;

import java.awt.*;

import Enumerators.TypeOfGearBox;
import Enumerators.TypeOfBody;
import Enumerators.TypeOfFuel;

public abstract class Car {
   private String make;
   private String model;
   private Color color;
   private TypeOfBody typeOfBody;
   private int numOfWheels;
   private TypeOfGearBox typeOfGearBox;
   private TypeOfFuel typeOfFuel;
   private float engineCapacity;

   public Car(String make, String model, Color color, TypeOfBody typeOfBody, int numOfWheels,
         TypeOfGearBox typeOfGearBox, TypeOfFuel typeOfFuel, float engineCapacity) {
      this.make = make;
      this.model = model;
      this.color = color;
      this.typeOfBody = typeOfBody;
      this.numOfWheels = numOfWheels;
      this.typeOfGearBox = typeOfGearBox;
      this.typeOfFuel = typeOfFuel;
      this.engineCapacity = engineCapacity;
   }

   public void movement() {

   }

   public void maintenance() {

   }

   public boolean turnLights() {
      return true;
   }

   public boolean turnWrapers() {
      return true;
   }

   public String getMake() {
      return make;
   }

   public String getModel() {
      return model;
   }

   public Color getColor() {
      return color;
   }

   public void setColor(Color color) {
      this.color = color;
   }

   public TypeOfBody getTypeOfBody() {
      return typeOfBody;
   }

   public int getNumOfWheels() {
      return numOfWheels;
   }

   public TypeOfGearBox getTypeOfGearBox() {
      return typeOfGearBox;
   }

   public TypeOfFuel getTypeOfFuel() {
      return typeOfFuel;
   }

   public float getEngineCapacity() {
      return engineCapacity;
   }
}
