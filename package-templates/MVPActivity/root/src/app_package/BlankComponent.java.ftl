package ${packageName}.${packName};

<#if applicationPackage??>import ${applicationPackage}.dagger.PerActivity;</#if>
import dagger.Subcomponent;

@PerActivity
@Subcomponent(
    modules = {
        ${Name}Module.class
    }
)
public interface ${Name}Component {
  void inject(${className} activity);
}