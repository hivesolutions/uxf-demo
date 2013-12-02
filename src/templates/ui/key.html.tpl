<section id="key">
    <h1 class="line">Key</h1>
    <div class="section-contents">
        <p>For the key shortcuts to be active a <span class="highlight">div</span> element under the
        <span class="highlight">body</span> must be set with the <span class="highlight">shortcuts</span>
        class. Only this way the keyboard shortcuts will be active.</p>

        <div class="box">
            <div>Press the <span class="highlight">e</span> key to activate the link.</div>
            <div class="key" data-key="69" data-url="#key"></div>
        </div>

<pre class="code language-markup">
&lt;div class=&quot;key&quot; data-key=&quot;69&quot; data-url=&quot;#key&quot;&gt;&lt;/div&gt;
</pre>

        <table>
            <tr>
                <td><span class="highlight">data-url</span></td>
                <td><span class="highlight">string</span></td>
                <td>The url string to be used to set in the document.</td>
            </tr>
        </table>
    </div>
</section>
