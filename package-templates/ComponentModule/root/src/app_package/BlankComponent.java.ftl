package ${packageName};

import ${packageName}.${Name}Module;
import dagger.Component;

@PerActivity
@Component(
    modules = {
        ${Name}Module.class,
        BaseActivityModule.class
    },
    dependencies = YourAppComponent.class
)
public interface ${Name}Component {
  void inject(${className} activity);

  final class Initializer {
    private Initializer() {
      throw new AssertionError("No instances.");
    }

    public static ${Name}Component init(${className} activity) {
      return Dagger${Name}Component.builder()
          .yourAppComponent(
              Injector.obtain(activity.getApplicationContext(), YourAppComponent.class))
          .baseActivityModule(new BaseActivityModule(activity))
          .${lName}Module(new ${Name}Module(activity))
          .build();
    }
  }
}