package ${packageName};

import android.content.Context;
import android.content.Intent;
import ${packageName}.R;
import ${packageName}.base.BaseBindingFragment;
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

  <#if includeComponent>
  @Override public ${Name}Component getComponent() {
    return component;
  }
  </#if>
}
