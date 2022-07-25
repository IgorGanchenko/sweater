<#import "parts/common.ftlh" as c>


<@c.page>
<form class="input-group mb-3 w-50" method="get" action="/main"><!--row g-2-->
    <div class="form-floating mb-3">
        <input type="text" name="filter" class="form-control" id="floatingInput" placeholder="Search by tag"
               value="${filter!""}" >
        <label for="floatingInput">Search by tag</label>
    </div>
    <button type="submit" class="btn btn-primary mb-3">Search</button>
</form>

<button class="btn btn-primary mb-3 gap-3" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="true" aria-controls="collapseExample">
    Add new Message
</button>
<div class="collapse" id="collapseExample">
    <form method="post" enctype="multipart/form-data">
        <div class="d-grid gap-3 w-50">
            <div class="form-group">
                <input type="text" class="form-control" name="text" placeholder="Enter message"/>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="tag" placeholder="Tag"/>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <input type="file" class="form-control" name="file" id="inputGroupFile04"
                           aria-describedby="inputGroupFileAddon04" aria-label="Upload">
                    <button class="btn btn-primary" type="button" id="inputGroupFileAddon04">Add file</button>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <div class="form-group">
                <button type="submit" class="btn btn-primary mb-3">Add</button>
            </div>
        </div>
    </form>
</div>


<div class="row row-cols-1 row-cols-md-3 g-4">
    <#list messages as message>
        <div class="card my-3">

                    <#if message.filename??>
                    <img src="/img/${message.filename}" class="card-img-top">
                    </#if>
            <div class="m-2">
                <span>${message.text}</span>
                <i>${message.tag}</i>
            </div>
            <div class="card-footer text-muted">
                ${message.authorName}
            </div>
        </div>
    <#else>
        No messages
    </#list>
</div>
</@c.page>