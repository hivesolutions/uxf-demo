<section id="cross-list">
    <h1  class="line">Cross List</h1>
    <div class="section-contents">
        <p>This element may be used to move or select elements from one list to other.</p>

        <div class="box box-white">
            <div class="cross-list" data-source="From" data-target="To" data-order="true">
                <ul class="data-source" data-type="countries"></ul>
            </div>
        </div>

<pre class="code language-markup">
&lt;div class=&quot;cross-list&quot; data-source=&quot;From&quot; data-target=&quot;To&quot; data-order=&quot;true&quot;&gt;
    &lt;ul class=&quot;data-source&quot; data-type=&quot;countries&quot;&gt;&lt;/ul&gt;
&lt;/div&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-source</span></td>
                <td><span class="highlight">string</span></td>
                <td>The name of the source list.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-target</span></td>
                <td><span class="highlight">string</span></td>
                <td>The name of the target list.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-duplicates</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If it is possible to add one item multiple times.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-order</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If the items of the target list can be manually ordered.</td>
            </tr>
        </table>

        <table class="table-data">
            <tr>
                <td><span class="highlight">order_changed( )</span></td>
                <td class="description">Triggered when the target list's order is changed.</td>
            </tr>
            <tr>
                <td><span class="highlight">items_changed( )</span></td>
                <td class="description">Called by both the source and the target list when a change occurs.</td>
            </tr>
        </table>
    </div>
</section>
