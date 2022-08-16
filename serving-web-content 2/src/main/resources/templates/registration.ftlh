<#import "parts/common.ftlh" as c>
<#import "parts/loginMacros.ftlh" as l>

<@c.page>
<div class="mb-1">Add new user</div>
<!--${message!" "}-->
${message?ifExists}
<@l.login "/registration" true/>
</@c.page>