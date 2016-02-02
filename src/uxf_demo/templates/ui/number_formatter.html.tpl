<section id="number-formatter">
    <h1 class="line">Number Formatter</h1>
    <div class="section-contents">

        <p>
            Being able to format number in the client side is god dam important
            when you're building an enterprise grade information system. Using
            the number formatter is possible to control the number of decimal
            places the separator for the decimal part the maginute separtor.
        </p>

        <div class="box">
            <div class="number" data-places="2" data-separator="," data-magnitude_separator=".">12345.6</div>
        </div>

<pre class="code language-markup">
&lt;div class=&quot;number&quot; data-places=&quot;2&quot; data-separator=&quot;,&quot; data-magnitude_separator=&quot;.&quot;&gt;12345.6&lt;/div&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-places</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The number of decimal places to be used (fixed point number). The final value is rounded and not truncated.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-separator</span></td>
                <td><span class="highlight">string</span></td>
                <td>The separator to separate the decimal part from the integer part.</td>
            </tr>
            <tr>
                <td><span class="highlight">magnitude-separator</span></td>
                <td><span class="highlight">string</span></td>
                <td>The separator to be used in magnitude order change.</td>
            </tr>
        </table>

    </div>
</section>
