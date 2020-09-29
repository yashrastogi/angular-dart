import 'package:angular/angular.dart';
import 'package:angular_app/src/components/hero_detail_component/hero_details_component.dart';
import 'package:angular_app/src/models/hero.dart';
import 'package:angular_app/src/services/hero_service.dart';

@Component(
  selector: 'my-heroes',
  templateUrl: 'hero_list_component.html',
  styleUrls: ['hero_list_component.css'],
  providers: [ClassProvider(HeroService)],
  directives: [coreDirectives, HeroDetailsComponent],
)
class HeroListComponent implements OnInit {
  final HeroService _heroService;

  HeroListComponent(this._heroService);

  final title = 'Tour of Heroes';

  List<Hero> heroes;
  void ngOnInit() => _getHeroes();
  void _getHeroes() async {
    heroes = await _heroService.getAll();
  }

  Hero selected;

  onSelect(Hero hero) => selected = hero;
}
