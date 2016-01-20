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
            <input type="checkbox" class="check-field" data-checked="on"/>
        </div>

<pre class="code language-markup">
&lt;input type=&quot;radio&quot; class=&quot;radio-field&quot; /&gt;
&lt;input type=&quot;checkbox&quot; class=&quot;check-field&quot; data-checked=&quot;on&quot; /&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-checked</span></td>
                <td><span class="highlight">string { "on" / "off" }</span></td>
                <td>The checked state of the input.</td>
            </tr>
        </table>
        <table class="table-data">
            <tr>
                <td><span class="highlight">change( )</span></td>
                <td>Raised when the checked state of the input changes.</td>
            </tr>
        </table>

        <div class="box box-white">
            <input type="text" class="text-field field-margin" data-original_value="text field" style="display:block;" />
            <textarea class="text-area field-margin" data-original_value="text area" data-maximum_length="100"></textarea>
            <input type="text" class="text-field field-margin" data-type="date" data-original_value="text field" data-error="true" style="display:block;" />
        </div>

<pre class="code language-markup">
&lt;input type=&quot;text&quot; class=&quot;text-field field-margin&quot; data-original_value=&quot;text field&quot; /&gt;
&lt;textarea class=&quot;text-area field-margin&quot; data-original_value=&quot;text area&quot; data-maximum_length=&quot;100&quot;&gt;&lt;/textarea&gt;
&lt;input type=&quot;text&quot; class=&quot;text-field field-margin&quot; data-type=&quot;date&quot; data-original_value=&quot;text field&quot; data-error=&quot;true&quot; /&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-type</span></td>
                <td><span class="highlight">string {integer, float, regex, date, datetime}</span></td>
                <td>The data type of the value to be represented by the text field. Allows filtering of keyboard typed values.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-original_value</span></td>
                <td><span class="highlight">string</span></td>
                <td>The text field's original value.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-maximum_length</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The maximum number of characters allowed for the text field's value.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-error</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>if the text field has an invalid value.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-regex</span></td>
                <td><span class="highlight">string</span></td>
                <td>The regular expression to be used to filter values. Only valid in case the data type is set to regex.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-no_process</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>if the text field's value should be processed before submiting the form. Only valid in case the data type is set to date or datetime.</td>
            </tr>
        </table>

        <table class="table-data">
            <tr>
                <td><span class="highlight">_focus( )</span></td>
                <td>Triggered when the text field receives focus.</td>
            </tr>
            <tr>
                <td><span class="highlight">_blur( )</span></td>
                <td>Triggered when the text field loses focus.</td>
            </tr>
            <tr>
                <td><span class="highlight">value_change( value )</span></td>
                <td>Raised when the text field's value changes.</td>
            </tr>
            <tr>
                <td><span class="highlight">invalid_set( )</span></td>
                <td>Raised when an invalid value is set.</td>
            </tr>
            <tr>
                <td><span class="highlight">invalid_unset( )</span></td>
                <td>Raised when an invalid value is unset.</td>
            </tr>
        </table>

        <div class="box box-white">
            <input type="text" class="text-field" data-type="float" data-decimal_places="2"/>
        </div>

<pre class="code language-markup">
&lt;input type=&quot;text&quot; class=&quot;text-field&quot; data-type=&quot;float&quot; data-decimal_places=&quot;2&quot; /&gt;
</pre>

        <table class="table-data">
             <tr>
                <td><span class="highlight">data-decimal_places</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The maximum number of decimal cases allowed for the text field's value. Only valid in case the data type is set to float.</td>
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

        <table class="table-data">
            <tr>
                <td><span class="highlight">files_change( files )</span></td>
                <td>Raised when the input's files change.</td>
            </tr>
        </table>
    </div>
</section>
