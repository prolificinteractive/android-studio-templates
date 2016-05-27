package ${packageName}.${packName};

<#if applicationPackage??>import ${applicationPackage}.dagger.PerActivity;</#if>
<#if includeClient??><#if applicationPackage??>import ${applicationPackage}.data.api.${clientName};</#if></#if>
<#if includeClient??><#if applicationPackage??>import ${applicationPackage}.data.util.RxUtils;</#if></#if>
<#if applicationPackage??>import ${applicationPackage}.ui.base.mvp.Presenter;</#if>
import javax.inject.Inject;
<#if includeClient??>import rx.Subscription;</#if>

@PerActivity
public class ${Name}Presenter extends Presenter<${Name}View> {

  <#if includeClient??>
  private final ${clientName} api;
  
  private Subscription dataSubscription;
  </#if>

  @Inject public ${Name}Presenter(<#if includeClient??>final ${clientName} api</#if>) {
	  <#if includeClient??>
    this.api = api;
    </#if>
  }
  <#if includeClient??>
 
  @Override protected void onDestroyed() {
    RxUtils.unSubscribeIfNeeded(dataSubscription);
  }
  </#if>
}