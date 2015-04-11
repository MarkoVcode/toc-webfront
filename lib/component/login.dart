library view_login_component;

import 'package:angular/angular.dart';
import 'dart:html';

@Component(
    selector: 'login-form',
    templateUrl: 'login.html',
    cssUrl: 'login.css')
class ViewLoginComponent {
  @NgTwoWay('login-email')
  String email = "";
  @NgTwoWay('login-password')
  String password = "pass";
//    LoginForm loginform = new LoginForm();

  //  Scope scope;
  //  @NgDirective(selector: '')
    ViewLoginComponent(RouteProvider routeProvider) {

    }
    
//    void save() {
///      var form = (scope.context['loginform'] as NgForm);
 //     print(form.invalid);
//    }
    
    void processLogin(MouseEvent evt){
      evt.preventDefault();
      // validate email
      // validate password
      // make the login call
      
    }
}


class Validator {
  
}

class LoginForm {
  String email = "sdsd@asdasda.sd";
  String password = "pass";
}