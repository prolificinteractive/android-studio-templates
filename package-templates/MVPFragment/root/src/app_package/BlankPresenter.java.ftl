package ${packageName};

<#if applicationPackage??>import ${applicationPackage}.dagger.PerActivity;</#if>
<#if apiCall??><#if applicationPackage??>import ${applicationPackage}.data.api.MotelSixApiClient;</#if></#if>
<#if apiCall??><#if applicationPackage??>import ${applicationPackage}.data.util.RxUtils;</#if></#if>
<#if applicationPackage??>import ${applicationPackage}.ui.base.mvp.Presenter;</#if>
import javax.inject.Inject;
<#if apiCall??>import rx.Subscription;</#if>

@PerActivity
public class ${Name}Presenter extends Presenter<${Name}View> {

  <#if apiCall??>
  private final MotelSixApiClient api;
  
  private Subscription dataSubscription;
  </#if>

  @Inject public ${Name}Presenter(<#if apiCall??>final MotelSixApiClient api</#if>) {
	  <#if apiCall??>
    this.api = api;
    </#if>
  }
  
  <#if apiCall??>
  @Override protected void onDestroyed() {
    RxUtils.unSubscribeIfNeeded(dataSubscription);
  }
  </#if>
}