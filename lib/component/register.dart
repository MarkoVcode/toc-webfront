library view_register_component;

import 'package:angular/angular.dart';
import 'dart:html';

@Component(
    selector: 'register-form',
    templateUrl: 'register.html',
    cssUrl: 'register.css')
class ViewRegisterComponent {
    @NgTwoWay('register-email')
    String email = "";
    @NgTwoWay('register-password')
    String password = "pass";
    @NgTwoWay('confirm-password-password')
    String confirm_password = "pass";
    @NgTwoWay('register-name')
    String name = "";
    @NgTwoWay('register-surname')
    String surname = "pass";  

    ViewRegisterComponent(RouteProvider routeProvider) {
      
    }
       
    void processRegistration(MouseEvent evt){
      evt.preventDefault();
      // validate email
      // validate password
      // make the login call
      
    }
}