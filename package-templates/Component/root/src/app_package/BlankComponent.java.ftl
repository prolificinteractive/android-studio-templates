package ${packageName};

import dagger.Component;

@PerActivity
@Component(
    modules = {
        BaseActivityModule.class
    },
    dependencies = AppComponent.class
)
public interface ${Name}Component {
  void inject(${className} activity);

  final class Initializer {
    private Initializer() {
      throw new AssertionError("No instances.");
    }

    public static ${Name}Component init(${className} activity) {
      return Dagger${Name}Component.builder()
          .appComponent(
              Injector.obtain(activity.getApplicationContext(), AppComponent.class))
          .baseActivityModule(new BaseActivityModule(activity))
          .${lName}Module(new ${Name}Module(activity))
          .build();
    }
  }
}