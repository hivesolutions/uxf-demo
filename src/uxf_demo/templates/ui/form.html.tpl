<section id="form">
    <h1 class="line">Form</h1>
    <div class="section-contents">
        <div class="box box-white">
            <form action="/form" method="post" class="form form-refresh" data-message="Submit Form">
                <div class="label field-margin">
                    <label>Name</label>
                </div>
                <div class="input field-margin">
                    <input name="name" class="text-field" placeholder="eg: John Doe"
                           value="{{ form.name }}" data-error="{{ errors.name }}" />
                </div>
                <div class="label field-margin">
                    <label>Age</label>
                </div>
                <div class="input">
                    <input name="age" class="text-field" data-type="integer" placeholder="eg: 18"
                           value="{{ form.age }}"   data-error="{{ errors.age }}" />
                </div>
                <div class="error-message"></div>
                <div class="form-success item">Form submitted with success!</div>
            </form>
        </div>

<pre class="code language-markup">
&lt;form action=&quot;/form&quot; method=&quot;post&quot; class=&quot;form form-confirm&quot; data-message=&quot;Submit Form&quot;&gt;
    &lt;div class=&quot;label&quot;&gt;
        &lt;label&gt;Name&lt;/label&gt;
    &lt;/div&gt;
    &lt;div class=&quot;input&quot;&gt;
        &lt;input name=&quot;name&quot; class=&quot;text-field focus&quot; placeholder=&quot;eg: John Doe&quot; value=&quot;{{ form.name }}&quot;
               data-error=&quot;{{ errors.name }}&quot; /&gt;
    &lt;/div&gt;
&lt;/form&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-error</span></td>
                <td><span class="highlight">string</span></td>
                <td>The name to be given to the expand operation.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-message</span></td>
                <td><span class="highlight">string</span></td>
                <td>The confirmation message to show when the form is confirmed. Shown if the form has the class <span class="highlight">form-confirm</span></td>
            </tr>
            <tr>
                <td><span class="highlight">data-no_trim</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If the form's text fields should be trimmed by removing the leading and trailing spaces.</td>
            </tr>
        </table>
        <table class="table-data">
            <tr>
                <td><span class="highlight">pre_submit( )</span></td>
                <td>Called before submitting the form.</td>
            </tr>
            <tr>
                <td><span class="highlight">post_submit( )</span></td>
                <td>Triggered when the form submission ends.</td>
            </tr>
            <tr>
                <td><span class="highlight">unlock( )</span></td>
                <td>Raised when the fields are usable again after submitting the form.</td>
            </tr>
            <tr>
                <td><span class="highlight">success( data )</span></td>
                <td>Triggered when the form is submitted with success.</td>
            </tr>
            <tr>
                <td><span class="highlight">error( exception, message )</span></td>
                <td>Raised when there is an error submitting the form.</td>
            </tr>
        </table>
        <p>Add the following classes to include different behaviours:</p>
        <table class="table-data">
            <tr>
                <td><span class="highlight">form-confirm</span></td>
                <td>A confirmation message is shown when the form is submited.</td>
            </tr>
            <tr>
                <td><span class="highlight">form-ajax</span></td>
                <td>The form is submitted in AJAX</td>
            </tr>
            <tr>
                <td><span class="highlight">form-refresh</span></td>
                <td>The page is refreshed after submitting the form.</td>
            </tr>
            <tr>
                <td><span class="highlight">no-async</span></td>
                <td>The form submission is not made asynchronously.</td>
            </tr>
            <tr>
                <td><span class="highlight">no-keyboard</span></td>
                <td>The confirmation message to show when the form is confirmed. Shown if the form has the class <span class="highlight">form-confirm</span></td>
            </tr>
        </table>
    </div>
</section>
