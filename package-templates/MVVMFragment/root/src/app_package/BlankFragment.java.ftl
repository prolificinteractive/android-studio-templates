package ${packageName};

import android.content.Context;
import android.content.Intent;
<#if applicationPackage??>import ${applicationPackage}.R;</#if>
<#if applicationPackage??>import ${applicationPackage}.ui.base.BaseBindingFragment;</#if>
import ${packageName}.view.${Name}View;
import ${packageName}.viewmodel.${Name}ViewModel;

public class ${className} 
    extends BaseBindingFragment<Fragment${Name}Binding, ${Name}ViewModel, ${Name}View> 
    implements ${Name}View {


  public static ${className} newInstance() {
    return new ${className}();
  }

  @Override protected int getLayoutId() {
    return R.layout.${fragmentName};
  }

  @Override protected void initializeDependencyInjector() {
    <#if includeComponent>
    getComponent(${Name}Component.class).inject(this);
    </#if>
  }
}
