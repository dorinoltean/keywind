<#import "template.ftl" as layout>
<#import "components/atoms/link.ftl" as link>

<@layout.registrationLayout displayRequiredFields=false displayMessage=false; section>
  <#if section = "form">
    ${msg("magicLinkSuccessfulLogin")}
  </#if>
  <#if section = "form" && magicLinkContinuation.sameBrowser>
    <p class="my-2">
      <@link.kw id="mode-barcode" color="primary" href=magicLinkContinuation.url>
        ${msg("loginPage")}
      </@link.kw>
    </p>
  </#if>
</@layout.registrationLayout>