library view_passwordreminder_component;

import 'package:angular/angular.dart';
import 'dart:html';

@Component(
    selector: 'password-reminder-form',
    templateUrl: 'password_reminder.html',
    cssUrl: 'password_reminder.css')
class ViewPasswordReminderComponent {
    @NgTwoWay('reminder-email')
    String email = "";

    ViewPasswordReminderComponent(RouteProvider routeProvider) {
      
    }
       
    void processReminder(MouseEvent evt){
      evt.preventDefault();
      // validate email
      // validate password
      // make the login call
      
    }
}