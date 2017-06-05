<section id="image-lazy-sec">
    <h1 class="line">Image Lazy</h1>
    <div class="section-contents">
        <p>
            If you add the <span class="highlight">image-lazy</span> class to an
            image it will only be loaded when visible on the viewport. The image
            url can be set with the <span class="highlight">src</span> attribute or
            with <span class="highlight">data-url</span>. When the image finishes
            loading the class <span class="highlight">loaded</span> is added.
        </p>
        <div class="box box-white">
            <img class="image-lazy" src="../static/images/banner.jpg">
        </div>

<pre class="code language-markup">
&lt;img class=&quot;image-lazy&quot; src=&quot;../static/images/banner.jpg&quot;&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-url</span></td>
                <td><span class="highlight">string</span></td>
                <td>The url of the image to load.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-url_retina</span></td>
                <td><span class="highlight">string</span></td>
                <td>The url of the retina (2x) image to be load for retina (high density) screens.</td>
            </tr>
        </table>

    </div>
</section>
