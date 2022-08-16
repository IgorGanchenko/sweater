<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-floating mb-3">
            <input type="text" name="username" class="form-control ${(usernameError??)?string('is-invalid', '')}"
                   id="floatingInput" placeholder="name@example.com" value="<#if user??>${user.username}</#if>"/>
            <label for="floatingInput">User name</label>
            <#if usernameError??>
            <div class="invalid-feedback">
                ${usernameError}
            </div>
            </#if>
        </div>
        <div class="form-floating mb-3">
            <input type="password" name="password" class="form-control ${(passwordError??)?string('is-invalid', '')}"
                   id="floatingPassword" placeholder="Password"/>
            <label for="floatingPassword">Password</label>
            <#if passwordError??>
            <div class="invalid-feedback">
                ${passwordError}
            </div>
            </#if>
        </div>

        <#if isRegisterForm>
        <div class="form-floating mb-3">
            <input type="password" name="password2" class="form-control ${(password2Error??)?string('is-invalid', '')}"
                   id="floatingPassword2" placeholder="Retype password"/>
            <label for="floatingPassword2">Password2</label>
            <#if password2Error??>
            <div class="invalid-feedback">
                ${password2Error}
            </div>
            </#if>
        </div>

            <div class="form-floating mb-3">
                <input type="email" name="email" class="form-control ${(emailError??)?string('is-invalid', '')}"
                       id="floatingEmail" placeholder="Email"  value="<#if user??>${user.email}</#if>"/>
                <label for="floatingEmail">E-mail</label>
                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                <#if emailError??>
                <div class="invalid-feedback">
                    ${emailError}
                </div>
            </#if>
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