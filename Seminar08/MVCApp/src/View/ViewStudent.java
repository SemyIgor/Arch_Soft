package View;

import java.util.List;

import Control.Interface.IGetView;
import Model.Domain.Student;

public class ViewStudent implements IGetView {

   public void printAllStudent(List<Student> students) {
      for (Student s : students) {
         System.out.println(s);
      }
   }
}
