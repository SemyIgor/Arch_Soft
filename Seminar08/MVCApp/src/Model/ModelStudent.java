package Model;

import java.util.List;

import Control.Interface.IGetModel;
import Model.Domain.Student;

public class ModelStudent implements IGetModel {
   private List<Student> students;

   public ModelStudent(List<Student> students) {
      this.students = students;
   }

   public List<Student> getAllStudents() {
      return students;
   }
}
