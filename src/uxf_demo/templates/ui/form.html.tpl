<section id="form-elements">
    <h1 class="line">Form Elements</h1>
    <div class="section-contents">
        <p>One of the most important aspects of the text field component is that it allows
        the <span class="highlight">date</span> and <span class="highlight">datetime</span> types. One can configure
        the date type by adding the <span class="highlight">no-calendar</span> class to the input and no calendar
        will appear. Another configuration possibility is to add the <span class="highlight">utc</span> class to the datetime text field and
        the time is interpreted in the static <span class="highlight">UTC</span> timezone.</p>

        <div class="box box-white">
            <input type="radio" class="radio-field"/>
            <input type="checkbox" class="check-field"/>
        </div>

<pre class="code language-markup">
&lt;input type=&quot;radio&quot; class=&quot;radio-field&quot;/&gt;
&lt;input type=&quot;checkbox&quot; class=&quot;check-field&quot;/&gt;
</pre>

        <div class="box box-white">
            <input type="text" class="text-field field-margin" data-original_value="text field" style="display:block;" />
            <textarea class="text-area field-margin" data-original_value="text area"></textarea>
            <input type="text" class="text-field" data-type="date" data-original_value="text field" style="display:block;" />
        </div>

<pre class="code language-markup">
&lt;input type=&quot;text&quot; class=&quot;text-field&quot; data-original_value=&quot;text field&quot; style=&quot;display:block;&quot; /&gt;
&lt;textarea class=&quot;text-field&quot; data-original_value=&quot;text area&quot;&gt;&lt;/textarea&gt;
&lt;input type=&quot;text&quot; class=&quot;text-field&quot; data-type=&quot;date&quot; data-original_value=&quot;text field&quot; /&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-type</span></td>
                <td><span class="highlight">string {integer, float, regex}</span></td>
                <td>The data type of the value to be represented by the text field. Allows filtering of keyboard typed values.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-regex</span></td>
                <td><span class="highlight">string</span></td>
                <td>The regular expression to be used to filter values. Only valid in case the data type is set to regex.</td>
            </tr>
        </table>

        <div class="box box-white">
            <input type="file" size="32" multiple="true" class="file-field" />
        </div>

<pre class="code language-markup">
&lt;input type=&quot;file&quot; size=&quot;12&quot; multiple=&quot;true&quot; class=&quot;file-field&quot; /&gt
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">multiple</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If multiple files may be selected for upload.</td>
            </tr>
        </table>

        <div class="box box-white">
            <a class="link link-blue uploader">Upload image</a>
        </div>

<pre class="code language-markup">
&lt;a class=&quot;link link-blue uploader&quot;&gt;Upload image&lt;/a&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-name</span></td>
                <td><span class="highlight">string</span></td>
                <td>Name value to be used in a possible enclosing form object.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-action</span></td>
                <td><span class="highlight">string</span></td>
                <td>The URL to be used in the POST action to be create by a created enclsoing form.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-no_text</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If the name of the selected file should be the text to be displayed.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-multiple</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If multiple file uploading should be enabled.</td>
            </tr>
        </table>
    </div>
</section>
