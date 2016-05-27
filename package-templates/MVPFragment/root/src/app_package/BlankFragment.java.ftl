package ${packageName};

<#if applicationPackage??>import ${applicationPackage}.R;</#if>
<#if applicationPackage??>import ${applicationPackage}.dagger.Injector;</#if>
<#if applicationPackage??>import ${applicationPackage}.ui.base.mvp.PresenterFragment;</#if>

public class ${className} 
    extends PresenterFragment<${Name}Presenter, ${Name}View> 
    implements ${Name}View {

  public static ${className} newInstance() {
    return new ${className}();
  }

  @Override protected int getLayoutId() {
    return R.layout.${fragmentName};
  }

  @Override protected void initializeDependencyInjector() {
    <#if includeComponent>
    Injector.obtain(getContext(), ${Name}Component.class).inject(this);
    </#if>
  }
}
