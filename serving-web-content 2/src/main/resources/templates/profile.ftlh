<#import "parts/common.ftlh" as c>
<#import "parts/loginMacros.ftlh" as l>

<@c.page>
${message!" "}
<h5>${username}</h5>
<form method="post">

    <div class="form-floating mb-3">
        <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password"/>
        <label for="floatingPassword">Password</label>
    </div>

    <div class="form-floating mb-3">
        <input type="email" name="email" class="form-control" id="floatingEmail" placeholder="Email" value="${email!' '}"/>
        <label for="floatingEmail">E-mail</label>
        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
    </div>


<input type="hidden" name="_csrf" value="${_csrf.token}">
<button class="btn btn-primary" type="submit">Save</button>
</form>
</@c.page>