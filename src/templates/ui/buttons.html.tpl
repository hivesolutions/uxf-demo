        <!-- buttons -->
<section id="buttons">
    <h1 class="line">Buttons <span class="sub-title">quite important</span></h1>

    <p>When developing web applications is mandatory to have a good set of buttons
    to control the application. The buttons provided allow you to raise events, submit
    forms, follow links, etc.</p>
    <p>The main areas to be explorer in the button involve <span class="highlight">data-link</span>
    and the <span class="highlight">data-submit</span> attributes.</p>

    <div class="box box-white">
        <div id="button" class="button button-solid">Button with Event</div>
        <div id="button-confirm" class="button button-solid">Button with Confirm Event</div>
        <div id="button-link" class="button button-solid" data-link="http://doe.com">Button with Link</div>
        <form action="http://doe.com" method="post" style="display:inline-block;">
            <div id="button-form" class="button button-solid" data-submit="true">Button submit Form</div>
        </form>
    </div>

    <div class="box box-white">
        <div id="button-red" class="button button-red">Button in red color</div>
        <div id="button-green" class="button button-green">Button in green color</div>
        <div id="button-blue" class="button button-blue">Button in blue color</div>
    </div>

<pre class="code language-markup">
&lt;div id=&quot;button-link&quot; class=&quot;button&quot; data-link=&quot;http://doe.com&quot;&gt;Button with Link&lt;/div&gt;
</pre>

<pre class="code language-markup">
&lt;form action=&quot;http://doe.com&quot; method=&quot;post&quot; style=&quot;display:inline-block;&quot;&gt;
    &lt;div id=&quot;button-form&quot; class=&quot;button&quot; data-submit=&quot;true&quot;&gt;Button submit Form&lt;/div&gt;
&lt;/form&gt;
</pre>

    <table>
        <tr>
            <td><span class="highlight">data-link</span></td>
            <td><span class="highlight">string</span></td>
            <td>The url link to be followed upon clicking the button.</td>
        </tr>
        <tr>
            <td><span class="highlight">data-submit</span></td>
            <td><span class="highlight">boolean</span></td>
            <td>If set the parent form is submitted upon clicking the button.</td>
        </tr>
    </table>
</section>
