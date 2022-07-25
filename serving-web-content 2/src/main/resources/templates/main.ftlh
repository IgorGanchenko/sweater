<#import "parts/common.ftlh" as c>


<@c.page>
<form class="input-group mb-3 w-50" method="get" action="/main"><!--row g-2-->
    <div class="form-floating mb-3">
        <input type="text" name="filter" class="form-control" id="floatingInput" placeholder="Search by tag"
               value="${filter!""}" >
        <label for="floatingInput">Search by tag</label>
    </div>
    <button type="submit" class="btn btn-primary mb-3 h-125">Search</button>
</form>



<p>
    <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample" aria-expanded="false" aria-controls="collapseWidthExample">
        Toggle width collapse
    </button>
</p>
<div style="min-height: 120px;">
    <div class="collapse collapse-horizontal" id="collapseWidthExample">
        <div class="card card-body" style="width: 300px;">
            This is some placeholder content for a horizontal collapse. It's hidden by default and shown when triggered.
        </div>
    </div>
</div>

<!--
<a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Add new Message
</a>
<div class="collapse" id="collapseExample">
    <div class="container text-center">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" class="form-control" name="text" placeholder="Enter message"/>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="tag" placeholder="Tag"/>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file" id="customFile">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Add</button>
            </div>
        </form>
    </div>
</div>
-->

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