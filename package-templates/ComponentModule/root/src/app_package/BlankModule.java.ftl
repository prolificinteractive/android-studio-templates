package ${packageName};

import ${packageName}.PerActivity;
import dagger.Module;
import dagger.Provides;

@Module
public class ${Name}Module {
  private final ${className} activity;

  public ${Name}Module(${className} activity) {
    this.activity = activity;
  }

  @Provides @PerActivity ${className} provideActivity() {
    return activity;
  }
}
