<#macro login path isRegisterForm>
    <form action="${path}" method="post">

        <div class="form-group">
            <label class="col-sm-2 col-from-label">User Name </label>
            <div class="col-sm-4">
                <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                       class="form-control ${(usernameError??)?string('is-invalid', '')}"
                       placeholder="Enter username"/>
                <#if usernameError??>
                    <div class="invalid-feedback">
                        ${usernameError}
                    </div>
                </#if>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 col-from-label"> Password: </label>
            <div class="col-sm-4">
                <input type="password" name="password" class="form-control  ${(passwordError??)?string('is-invalid', '')}"
                       placeholder="Enter password"/>
                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${passwordError}
                    </div>
                </#if>
            </div>
        </div>

        <#if isRegisterForm>
            <div class="form-group">
                <label class="col-sm-2 col-form-label">Password:</label>
                <div class="col-sm-4">
                    <input type="password" name="password2"
                           class="form-control ${(password2Error??)?string('is-invalid', '')}"
                           placeholder="Retype password" />
                    <#if password2Error??>
                        <div class="invalid-feedback">
                            ${password2Error}
                        </div>
                    </#if>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 col-from-label"> Email: </label>
                <div class="col-sm-4">
                    <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                    class="form-control ${(emailError??)?string('is-invalid', '')}"
                    placeholder="typapochta@mail.ru"/>
                    <#if emailError??>
                        <div class="invalid-feedback">
                            ${emailError}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="g-recaptcha" data-sitekey="6LfFW6gqAAAAAGhEuTIyLAJ_8jXYQiw9vn99oFT3"></div>
                <#if captchaError??>
                    <div class="alert alert-danger" role="alert">
                        ${captchaError}
                    </div>
                </#if>
            </div>
         </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <#if !isRegisterForm><a href="/registration">Add new user</a></#if>
        <button class="btn btn-primary" type="submit"><#if isRegisterForm>Create<#else> Sign In</#if></button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-primary" type="submit"><#if user??>Sing Out<#else>Log in</#if></button>
    </form>
</#macro>