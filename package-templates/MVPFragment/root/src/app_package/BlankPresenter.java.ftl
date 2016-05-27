package ${packageName};

<#if applicationPackage??>import ${applicationPackage}.dagger.PerActivity;</#if>
<#if includeApi && applicationPackage??>import ${applicationPackage}.data.api.${clientName};</#if>
<#if includeApi && applicationPackage??>import ${applicationPackage}.data.util.RxUtils;</#if>
<#if applicationPackage??>import ${applicationPackage}.ui.base.mvp.Presenter;</#if>
import javax.inject.Inject;
<#if includeApi>import rx.Subscription;</#if>

@PerActivity
public class ${Name}Presenter extends Presenter<${Name}View> {

  <#if includeApi>private final ${clientName} api;</#if>  
  <#if includeApi && includeSubscription>private Subscription dataSubscription;</#if>

  @Inject public ${Name}Presenter(<#if includeApi>final ${clientName} api</#if>) {
    <#if includeApi>this.api = api;</#if>
  }
  
  @Override protected void onDestroyed() {
    <#if includeApi && includeSubscription>RxUtils.unSubscribeIfNeeded(dataSubscription);</#if>
  }
}