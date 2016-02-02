<section id="eval">
    <h1 class="line">Eval</h1>
    <div class="section-contents">
        <p>If you add the <span class="highlight">eval</span> class to an element its <span class="highlight">data-eval</span>
        attribute (or html content) will be evaluated as a Javascript expression and replace its content.</p>
        <div class="box box-white">
            <p class="eval">2+2</p>
        </div>

<pre class="code language-markup">
&lt;p class=&quot;eval&quot;&gt;2+2&lt;/p&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-eval</span></td>
                <td><span class="highlight">string</span></td>
                <td>Javascript expression to evaluate. If not set then the element's html is used.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-continuous</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If the expression should be continuously evaluated.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-timeout</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The interval in milliseconds to evaluate the expression.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-selector</span></td>
                <td><span class="highlight">string</span></td>
                <td>Selector for an element that will trigger the evaluation when its value changes.</td>
            </tr>
        </table>
    </div>
</section>
