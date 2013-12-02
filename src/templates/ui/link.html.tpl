<section id="link">
    <h1 class="line">Link <span class="sub-title">control the linking</span></h1>
    <div class="section-contents">
        <p>This general link component does not perform much more than the default html
        <span class="highlight">a</span> element. The main feature is that is possible to use
        smooth scrolling for internal link. To use it you must set the <span class="highlight">data-duration</span>
        attribute with the amount of milliseconds from the scrolling.</p>

        <div class="box">
            <a class="link link-blue" href="#link" data-duration="500" data-offset="-42">Scroll Link</a>
        </div>

<pre class="code language-markup">
&lt;a class=&quot;link link-blue&quot; href=&quot;#link&quot; data-duration=&quot;500&quot; data-offset=&quot;-42&quot;&gt;Scroll Link&lt;/a&gt;
</pre>

        <table>
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
        </table>
    </div>
</section>
