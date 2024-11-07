<#import "template.ftl" as layout>
<#import "components/atoms/link.ftl" as link>

<@layout.registrationLayout displayRequiredFields=false displayMessage=false; section>
 <#if section = "header">
    <div id="kc-username" class="${properties.kcFormGroupClass!}">
      <label id="kc-attempted-username">${auth.attemptedUsername}</label>

      <@link.kw id="reset-login" color="primary" href=url.loginRestartFlowUrl ariaLabel="${msg("restartLoginTooltip")}" class="my-2">
        ${msg("restartLoginTooltip")}
      </@link.kw>
    </div>
  <#elseif section = "form">
    ${msg("magicLinkContinuationConfirmation")}
  </#if>
  <script>
     (function (w, d) {
        setTimeout(function(){
           w.location.reload(1);
        }, 5000);
     })(window, document);
  </script>
</@layout.registrationLayout>