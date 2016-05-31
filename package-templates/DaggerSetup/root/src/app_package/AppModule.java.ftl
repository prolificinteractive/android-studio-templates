package ${packageName}.dagger.modules;

import android.app.Application;
import android.content.res.Resources;
<#if applicationPackage??>import ${applicationPackage}.${Name};</#if>
import ${packageName}.dagger.PerApp;
import dagger.Module;
import dagger.Provides;

@Module
public class ${Name}Module {

  private final ${Name} app;

  public ${Name}Module(${Name} app) {
    this.app = app;
  }

  @Provides @PerApp ${Name} provide${Name}() {
    return app;
  }

  @Provides @PerApp Application provideApplication(${Name} app) {
    return app;
  }

  @Provides @PerApp Resources provideResources(Application app) {
    return app.getResources();
  }
}

