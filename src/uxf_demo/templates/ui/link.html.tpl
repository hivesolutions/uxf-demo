<section id="link">
    <h1 class="line">Link</h1>
    <div class="section-contents">

        <p>
            This general link component does not perform much more than the
            default html <span class="highlight">a</span> element. The main
            feature is that is possible to use smooth scrolling for an internal
            link. To use it you must set the <span class="highlight">data-duration</span>
            attribute with the amount of milliseconds for the scrolling.
        </p>

        <div class="box box-white">
            <a class="link link-blue" href="#link" data-duration="500" data-offset="-42">Scroll Link</a>
        </div>

<pre class="code language-markup">
&lt;a class=&quot;link link-blue&quot; href=&quot;#link&quot; data-duration=&quot;500&quot; data-offset=&quot;-42&quot;&gt;Scroll Link&lt;/a&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-duration</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The duration for the scrolling effect in milliseconds.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-offset</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The offset to the target element in pixels, the value may be positive or negative.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-hash</span></td>
                <td><span class="highlight">string</span></td>
                <td>Hash value to be added to the location hash.</td>
            </tr>
        </table>

        <p>
            This component can also be used to make an AJAX request by setting
            <span class="highlight">data-ajax</span> to true. The response handler
            should bind to this element's <span class="highlight">success</span>
            and <span class="highlight">error</span> events.
        </p>

<pre class="code language-markup">
&lt;a class=&quot;link link-blue&quot; href=&quot;#link&quot; data-ajax=&quot;true&quot;&gt;AJAX Request&lt;/a&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-ajax</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If an AJAX request should be made instead of the default link behaviour.</td>
            </tr>
        </table>

        <table class="table-data">
            <tr>
                <td><span class="highlight">success( data )</span></td>
                <td>Called if the request succeeds.</td>
            </tr>
            <tr>
                <td><span class="highlight">error( request, status, error )</span></td>
                <td>Called if the request fails.</td>
            </tr>
        </table>

    </div>
</section>
