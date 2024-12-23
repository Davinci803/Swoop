<#macro login path isRegisterForm>
    <form action="${path}" method="post">

        <div class="form-group">
            <label class="col-sm-2 col-from-label">User Name </label>
            <div class="col-sm-4">
                <input type="text" name="username" class="form-control" placeholder="Enter username"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 col-from-label"> Password: </label>
            <div class="col-sm-4">
                <input type="password" name="password" class="form-control" placeholder="Enter password"/>
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <#if !isRegisterForm><a href="/registration">Add new user</a></#if>
        <button class="btn btn-primary" type="submit"><#if isRegisterForm>Create<#else> Sign In</#if></button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-primary" type="submit">Sing Out</button>
    </form>
</#macro>