<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-floating mb-3">
            <input type="text" name="username" class="form-control" id="floatingInput" placeholder="name@example.com" />
            <label for="floatingInput">User name</label>
        </div>
        <div class="form-floating mb-3">
            <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password"/>
            <label for="floatingPassword">Password</label>
        </div>

        <#if isRegisterForm>
            <div class="form-floating mb-3">
                <input type="email" name="email" class="form-control" id="floatingEmail" placeholder="Email"/>
                <label for="floatingEmail">E-mail</label>
                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
            </div>
        </#if>

        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <#if !isRegisterForm>
            <a href="/registration">Add new user</a>
        </#if>
        <button class="btn btn-primary" type="submit">
            <#if isRegisterForm>Create<#else>Sign in</#if>
        </button>
    </form>
</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button class="btn btn-primary" type="submit">Sign Out</button>
</form>
</#macro>