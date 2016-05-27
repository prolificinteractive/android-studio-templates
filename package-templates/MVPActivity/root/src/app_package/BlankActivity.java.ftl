package ${packageName}.${packName};

import android.content.Context;
import android.content.Intent;
<#if applicationPackage??>import ${applicationPackage}.R;</#if>
<#if applicationPackage??>import ${applicationPackage}.ui.base.BaseBindingActivity;</#if>
import ${packageName}.${packName}.${Name}View;
import ${packageName}.${packName}.${Name}Presenter;

public class ${className} 
    extends PresenterActivity<${Name}Presenter, ${Name}View>
    implements ${Name}View {

  <#if includeComponent>private ${Name}Component component;</#if>  

  public static void start(final Context context) {
    context.startActivity(new Intent(context, ${className}.class));
  }

  @Override protected int getLayoutId() {
    return R.layout.${activityName};
  }

  @Override protected void initializeDependencyInjector() {
    <#if includeComponent>
    component = YourApp.get(this)
        .getComponent()
        .plus(new ${Name}Module());
    component.inject(this);
    </#if>
  }
  <#if includeComponent>
  
  @Override public Object getSystemService(@NonNull final String name) {
    if (Injector.matchesService(name, ${Name}Component.class)) {
      return component;
    }
    return super.getSystemService(name);
  }
  </#if>
}
