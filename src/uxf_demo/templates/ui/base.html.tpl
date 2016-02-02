<section id="style">
    <h1 class="line">Base</h1>
    <div class="section-contents">

        <div class="section-function">
            <h2>uxcontent</h2>
            <p>
                Changes the text contents of an element without changing
               any of its child elements (only textual part).
            </p>
<pre class="code language-javascript">
jQuery("div.target").uxcontent("Hello World");
</pre>
        </div>

        <div class="section-function">
            <h2>uxdecimal</h2>
            <p>
                Creates a floating point value with possible precision
                error into a less precise float with no rounding issues.
            </p>
            <p>
                eg: 38.55 * 3.5 = 134,925 but in js this number is represented
                as 134.92499999999998, to be able to represent it as 134.925 one
                should use the <span class="highlight">uxdecimal</span>
            </p>
<pre class="code language-javascript">
jQuery.uxdecimal(38.55 * 3.5);
</pre>
        </div>

        <div class="section-function">
            <h2>uxcountry</h2>
            <p>
                Converts a standard representation of a country (ISO) into a visual
                locale base representation. Possible values for the format field are:
                <span class="highlight">iso</span>, <span class="highlight">iso2</span>
                and <span class="highlight">iso3</span>.
            </p>
<pre class="code language-javascript">
jQuery.uxcountry("PT", "iso2");
</pre>
        </div>

        <div class="section-function">
            <h2>uxalert</h2>
            <p>
                Presents an alert box with the specified message and a confirm button.
                The <span class="highlight">callback</span> is called when the user confirms.
            </p>
<pre class="code language-javascript">
alert("Hello World", callback);
</pre>
        </div>

        <div class="section-function">
            <h2>uxinfo</h2>
            <p>
                Presents an info box with the specified message, title and type (which will
                be added to the title element as a class).
            </p>
<pre class="code language-javascript">
jQuery("body").uxinfo("There was an error.", "Warning", "warning");
</pre>
        </div>

    </div>
</section>
