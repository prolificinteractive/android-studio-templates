package ${packageName}.${packName};

import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
<#if applicationPackage??>import ${applicationPackage}.${appName};</#if>
<#if applicationPackage??>import ${applicationPackage}.R;</#if>
<#if applicationPackage??>import ${applicationPackage}.dagger.Injector;</#if>
<#if applicationPackage??>import ${applicationPackage}.ui.base.mvp.PresenterActivity;</#if>

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
    component = ${appName}.get(this)
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
