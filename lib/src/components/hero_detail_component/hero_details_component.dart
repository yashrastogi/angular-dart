import 'package:angular/angular.dart';
import 'package:angular_app/src/models/hero.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
    selector: "hero-details",
    templateUrl: "hero_details_component.html",
    styleUrls: [],
    directives: [coreDirectives, formDirectives])
class HeroDetailsComponent {
  @Input()
  Hero hero;
}
