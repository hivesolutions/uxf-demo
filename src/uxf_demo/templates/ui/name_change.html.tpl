<section id="name-change">
    <h1 class="line">Name Change</h1>
    <div class="section-contents">
        <p>Add the class <span class="highlight">name-change</span> to an input to change its name if it is submitted without a value</p>
        <div class="box box-white">
            <form class="form" action="/form" method="POST">
                <div class="label field-margin">
                    <label>Name</label>
                </div>
                <div class="input field-margin">
                    <input name="name" class="text-field name-change"
                    placeholder="eg: John Doe" data-name_empty="no_name" data-width="200"/>
                </div>
            </form>
        </div>

<pre class="code language-markup">
&lt;form class=&quot;form&quot; action=&quot;/form&quot; method=&quot;POST&quot;&gt;
    &lt;div class=&quot;label field-margin&quot;&gt;
        &lt;label&gt;Name&lt;/label&gt;
    &lt;/div&gt;
    &lt;div class=&quot;input field-margin&quot;&gt;
        &lt;input name=&quot;name&quot; class=&quot;text-field name-change&quot;
        placeholder=&quot;eg: John Doe&quot; data-name_empty=&quot;no_name&quot; /&gt;
    &lt;/div&gt;
&lt;/form&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-name_empty</span></td>
                <td><span class="highlight">string</span></td>
                <td>The name to be given to the input if it's empty when the form is submitted.</td>
            </tr>
        </table>
    </div>
</section>
