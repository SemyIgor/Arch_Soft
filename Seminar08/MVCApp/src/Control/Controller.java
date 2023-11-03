package Control;

import java.util.List;

import Control.Interface.IGetModel;
import Control.Interface.IGetView;
// import Model.ModelStudent; // Без архитектурных границ
import Model.Domain.Student;
// import View.ViewStudent; // Без архитектурных границ

public class Controller {
   // private ModelStudent model; // Без архитектурных границ (интерфейсов)
   private IGetModel model;
   // private ViewStudent view; // Без архитектурных границ (интерфейсов)
   private IGetView view;

   // MVP
   private List<Student> students;

   // Без архитектурных границ
   // public Controller(ModelStudent model, ViewStudent view) {
   // this.model = model;
   // this.view = view;
   // }

   public Controller(IGetModel model, IGetView view) {
      this.model = model;
      this.view = view;
   }

   // MVP
   private boolean testData(List<Student> studs) {
      if (studs.size() > 0) {
         return true;
      } else {
         return false;
      }
   }

   public void update() {
      // MVP
      students = model.getAllStudents(); // Презентер получает от модели, но не передаёт Представлению список студентов
                                         // сразу. Следует проверка:
      if (testData(students)) {
         view.printAllStudent(students);
      } else {
         System.out.println("Список студентов пуст!");
      }
      // MVC
      // view.printAllStudent(model.getAllStudents()); // При реализации MVC
   }

   // Без архитектурных границ
   // public ModelStudent getModel() {
   // return model;
   // }

   // public void setModel(ModelStudent model) {
   // this.model = model;
   // }

   // public ViewStudent getView() {
   // return view;
   // }

   // public void setView(ViewStudent view) {
   // this.view = view;
   // }

   public IGetModel getModel() {
      return model;
   }

   public void setModel(IGetModel model) {
      this.model = model;
   }

   public IGetView getView() {
      return view;
   }

   public void setView(IGetView view) {
      this.view = view;
   }

   // public List<Student> getStudents() {
   // return students;
   // }

   // public void setStudents(List<Student> students) {
   // this.students = students;
   // }

   @Override
   public String toString() {
      return "Controller [model=" + model + ", view=" + view + "]";
   }

}
