<section id="select-list">
    <h1  class="line">Select List</h1>
    <div class="section-contents">
        <p>Component to list items with support for ordering and selection.</p>
        <div class="box box-white">
            <ul class="select-list" data-order="true">
                <li>Item 1</li>
                <li>Item 2</li>
                <li>Item 3</li>
                <li>Item 4</li>
                <li>Item 5</li>
            </ul>
        </div>

<pre class="code language-markup">
&lt;ul class=&quot;select-list&quot; data-order=&quot;true&quot;&gt;
    &lt;li&gt;Item 1&lt;/li&gt;
    &lt;li&gt;Item 2&lt;/li&gt;
    &lt;li&gt;Item 3&lt;/li&gt;
    &lt;li&gt;Item 4&lt;/li&gt;
    &lt;li&gt;Item 5&lt;/li&gt;
&lt;/ul&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-order</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If the items of the list can be manually ordered.</td>
            </tr>
        </table>

        <table class="table-data">
            <tr>
                <td><span class="highlight">order_changed( )</span></td>
                <td class="description">Triggered when the list's order is changed.</td>
            </tr>
            <tr>
                <td><span class="highlight">selected( item )</span></td>
                <td class="description">Triggered by a list's item when it's double clicked.</td>
            </tr>
        </table>
    </div>
</section>
