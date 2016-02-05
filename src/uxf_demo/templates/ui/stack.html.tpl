<section id="stack-sec">
    <h1 class="line">Stack</h1>
    <div class="section-contents">

        <p>
            With this component you can have stackable panels that you can use,
            for example, to create a navigation menu with various submenus.
        </p>

        <div class="box box-white">
            <div class="stack" id="stack-example">
                <div class="stack-item">
                    <a class="stack-item-link" data-target="#stack-item-2">Item 1</a>
                </div>
                <div class="stack-item" id="stack-item-2">
                    <a class="stack-pop-button">Previous</a>
                    <a class="stack-item-link" data-target="#stack-item-3">Item 2</a>
                </div>
                <div class="stack-item" id="stack-item-3">
                    <a class="stack-pop-button">Previous</a>
                    <a>Item 3</a>
                </div>
            </div>
        </div>

<pre class="code language-markup">
&lt;div class=&quot;stack&quot;&gt;
    &lt;div class=&quot;stack-item&quot;&gt;
        &lt;a&gt;Item 1&lt;/a&gt;
    &lt;/div&gt;
    &lt;div class=&quot;stack-item&quot;&gt;
        &lt;a&gt;Item 2&lt;/a&gt;
    &lt;/div&gt;
    &lt;div class=&quot;stack-item&quot;&gt;
        &lt;a&gt;Item 3&lt;/a&gt;
    &lt;/div&gt;
&lt;/div&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">push( target )</span></td>
                <td>Places the <span class="highlight">target</span> at the top of the stack.</td>
            </tr>
            <tr>
                <td><span class="highlight">pop( )</span></td>
                <td>Removes the top stack item from the stack.</td>
            </tr>
        </table>

    </div>
</section>
