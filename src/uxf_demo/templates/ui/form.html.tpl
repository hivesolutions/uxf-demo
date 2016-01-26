<section id="form">
    <h1 class="line">Form</h1>
    <div class="section-contents">
        <div class="box box-white">
            <form action="/form" method="post" class="form form-confirm" data-message="Submit Form">
                <div class="label">
                    <label>Name</label>
                </div>
                <div class="input">
                    <input name="name" class="text-field focus" placeholder="eg: John Doe" value="{{ form.name }}"
                           data-error="{{ errors.name }}" />
                </div>
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

    </div>
</section>
