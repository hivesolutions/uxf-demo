<section id="image">
    <h1 class="line">Image</h1>
    <div class="section-contents">

        <p>
            If you add the <span class="highlight">image</span> class to an element
            you can specify an image to be presented when that element is clicked.
            If it also has the class <span class="highlight">lightbox-animated</span>
            then there will be an animation.
        </p>

        <div class="box box-white">
            <img class="image lightbox-animated" src="/static/images/uxf-logo-64.png" data-lightbox_path="/static/images/uxf-logo-128.png" data-lightbox_large_path="/static/images/uxf-logo-256.png">
        </div>

<pre class="code language-markup">
&lt;img class=&quot;image lightbox-animated&quot;
    src=&quot;/static/libs/uxf/images/uxf-logo-64.png&quot;
    data-lightbox_path=&quot;/static/libs/uxf/images/uxf-logo-128.png&quot;
    data-lightbox_large_path=&quot;/static/libs/uxf/images/uxf-logo-256.png&quot;&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-lightbox_path</span></td>
                <td><span class="highlight">string</span></td>
                <td>Path of the image to be presented.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-lightbox_large_path</span></td>
                <td><span class="highlight">string</span></td>
                <td>Path to a bigger version of the image to be presented.</td>
            </tr>
        </table>

    </div>
</section>
