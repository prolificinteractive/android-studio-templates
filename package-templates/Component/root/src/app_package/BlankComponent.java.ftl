package ${packageName};

<#if componentType == "component" && applicationPackage??>import ${applicationPackage}.dagger.Injector;</#if>
<#if applicationPackage??>import ${applicationPackage}.dagger.PerActivity;</#if>
<#if componentType == "subcomponent">
import dagger.Subcomponent;
<#else>
import dagger.Component;
</#if>

@PerActivity
<#if componentType == "subcomponent">
@Subcomponent(
    modules = {
        ${Name}Module.class
    }
)
<#else>
@Component(
    modules = {
        BaseActivityModule.class
    },
    dependencies = YourAppComponent.class
)
</#if>
public interface ${Name}Component {
  void inject(${className} activity);

  <#if componentType == "subcomponent">
  <#else>
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
  </#if>
}