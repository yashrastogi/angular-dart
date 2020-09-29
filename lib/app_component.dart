import 'package:angular/angular.dart';
import 'package:angular_app/src/components/hero_list_component/hero_list_component.dart';
import 'package:angular_router/angular_router.dart';

@Component(selector: 'my-app', template: '''
  <h1>{{title}}</h1>
  <my-heroes></my-heroes>
''', directives: [HeroListComponent])
class AppComponent {
  final title = "Tour of Heroes";
}
