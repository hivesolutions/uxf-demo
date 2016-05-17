<section id="button-group-sec">
    <h1 class="line">Button Group</h1>
    <div class="section-contents">

        <p>
            This component allows the selection of an option in a form using buttons.
            When the form is submitted, an input is created with the name of the button
            group and the value of the selected button.
        </p>

        <div class="box box-white">
            <div class="button-group button-group-left" name="option">
                <div class="button button-solid" data-value="a">Option A</div>
                <div class="button button-solid" data-value="b">Option B</div>
                <div class="button button-solid" data-value="c">Option C</div>
                <div class="button button-solid" data-value="d">Option D</div>
            </div>
            <div class="clear"></div>
        </div>

<pre class="code language-markup">
&lt;div class=&quot;button-group button-group-left&quot; name=&quot;option&quot;&gt;
    &lt;div class=&quot;button button-solid&quot; data-value=&quot;a&quot;&gt;Option A&lt;/div&gt;
    &lt;div class=&quot;button button-solid&quot; data-value=&quot;b&quot;&gt;Option B&lt;/div&gt;
    &lt;div class=&quot;button button-solid&quot; data-value=&quot;c&quot;&gt;Option C&lt;/div&gt;
    &lt;div class=&quot;button button-solid&quot; data-value=&quot;d&quot;&gt;Option D&lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;clear&quot;&gt;&lt;/div&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-value</span></td>
                <td><span class="highlight">string</span></td>
                <td>The data value that the button represents.</td>
            </tr>
        </table>
        <table class="table-data">
            <tr>
                <td><span class="highlight">index_changed( index, element )</span></td>
                <td>Triggered when one of the buttons has been clicked. If the last handler of this event returns false then the button is not selected.</td>
            </tr>
            <tr>
                <td><span class="highlight">index_selected( index, element )</span></td>
                <td>Notifies that one of the buttons has been selected.</td>
            </tr>
        </table>
        <table class="table-data">
            <tr>
                <td><span class="highlight">unselect( )</span></td>
                <td>Removes the current selection.</td>
            </tr>
            <tr>
                <td><span class="highlight">index_selected( index, element )</span></td>
                <td>Notifies that one of the buttons has been selected.</td>
            </tr>
        </table>
        <table class="table-data">
            <tr>
                <td><span class="highlight">unselect(  )</span></td>
                <td>Removes the current selection.</td>
            </tr>
        </table>
    </div>
</section>
