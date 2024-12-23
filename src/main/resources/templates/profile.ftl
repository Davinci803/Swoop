<#import "parts/common.ftl" as c>
<@c.page>
    <h5>${username}</h5>
    ${message?ifExists}
    <form method="post">

        <div class="form-group">
            <label class="col-sm-2 col-from-label"> Password: </label>
            <div class="col-sm-4">
                <input type="password" name="password" class="form-control" placeholder="Enter password"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 col-from-label"> Email: </label>
            <div class="col-sm-4">
                <input type="email" name="email" class="form-control" placeholder="pochta@mail.ru" value="${email!''}"/>
            </div>
        </div>

        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-primary" type="submit">Save</button>
    </form>
</@c.page>