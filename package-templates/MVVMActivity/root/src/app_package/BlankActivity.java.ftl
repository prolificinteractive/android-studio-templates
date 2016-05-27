package ${packageName}.${packName};

import android.content.Context;
import android.content.Intent;
<#if applicationPackage??>import ${applicationPackage}.R;</#if>
<#if applicationPackage??>import ${applicationPackage}.ui.base.BaseBindingActivity;</#if>
import ${packageName}.${packName}.view.${Name}View;
import ${packageName}.${packName}.viewmodel.${Name}ViewModel;

public class ${className} 
    extends BaseBindingActivity<Activity${Name}Binding, ${Name}ViewModel, ${Name}View> 
    implements ${Name}View<#if includeComponent>, HasComponent<${Name}Component></#if>{

  <#if includeComponent>private ${Name}Component component;</#if>  

  public static void start(final Context context) {
    context.startActivity(new Intent(context, ${className}.class));
  }

  @Override protected int getLayoutId() {
    return R.layout.${activityName};
  }

  @Override protected void initializeDependencyInjector() {
    <#if includeComponent>
    component = ${Name}Component.Initializer.init(this);
    component.inject(this);
    </#if>
  }

  <#if includeComponent>
  @Override public ${Name}Component getComponent() {
    return component;
  }
  </#if>
}
