<section id="changer">
    <h1 class="line">Changer</h1>
    <div class="section-contents">

        <div class="box box-white">
            <div id="changer-trigger" class="changer" data-section_count="2" data-timeout="2000">Change</div>
            <div class="content-changer" data-trigger="#changer-trigger">
                <div class="changer-panel">Section 1</div>
                <div class="changer-panel">Section 2</div>
            </div>
        </div>

<pre class="code language-markup">
&lt;div id=&quot;changer-trigger&quot; class=&quot;changer&quot; data-section_count=&quot;2&quot; data-timeout=&quot;2000&quot;&gt;Change&lt;/div&gt;
&lt;div class=&quot;content-changer&quot; data-trigger=&quot;#changer-triggerr&quot;&gt;
    &lt;div class=&quot;changer-panel&quot;&gt;Section 1&lt;/div&gt;
    &lt;div class=&quot;changer-panel&quot;&gt;Section 2&lt;/div&gt;
&lt;/div&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-section_count</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The number of sections to change through.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-timeout</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The interval in milliseconds to change the section.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-trigger</span></td>
                <td><span class="highlight">string</span></td>
                <td>The selector for the changer element. The change can also be triggered by setting <span class="highlight">data-timeout</span> in the <span class="highlight">.content-changer</span> element.</td>
            </tr>
        </table>

        <table class="table-data">
            <tr>
                <td><span class="highlight">change( )</span></td>
                <td>Raised when a new section is shown.</td>
            </tr>
        </table>

    </div>
</section>
