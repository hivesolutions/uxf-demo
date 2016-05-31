<section id="filter-sec">
    <h1  class="line">Filter</h1>
    <div class="section-contents">

        <p>
            May be used to list dynamic content in a table like environment. Queries a data
            source and has support for filtering with a text field and drop fields. You can
             also trigger the <span class="highlight">update</span> event to refresh the filter.
        </p>

        <div class="box box-white">
            <ul class="filter" data-number_records="2">
                <ul class="data-source" data-type="local">
                    <li><span name="name">User 1</span></li>
                    <li><span name="name">User 2</span></li>
                    <li><span name="name">User 3</span></li>
                    <li><span name="name">User 4</span></li>
                    <li><span name="name">User 5</span></li>
                    <li><span name="name">User 6</span></li>
                </ul>
                <li class="template">
                    <div class="name">
                        <a>%[name]</a>
                    </div>
                </li>
                <div class="filter-no-results quote">
                    No results found
                </div>
                <div class="filter-more">
                    <span class="button more">Load more</span>
                    <span class="button load">Loading</span>
                </div>
            </ul>
        </div>

<pre class="code language-markup">
&lt;ul class=&quot;filter&quot; data-number_records=&quot;2&quot;&gt;
    &lt;ul class=&quot;data-source&quot; data-type=&quot;local&quot;&gt;
        &lt;li&gt;&lt;span name=&quot;name&quot;&gt;User 1&lt;/span&gt;&lt;/li&gt;
        &lt;li&gt;&lt;span name=&quot;name&quot;&gt;User 2&lt;/span&gt;&lt;/li&gt;
        &lt;li&gt;&lt;span name=&quot;name&quot;&gt;User 3&lt;/span&gt;&lt;/li&gt;
        &lt;li&gt;&lt;span name=&quot;name&quot;&gt;User 4&lt;/span&gt;&lt;/li&gt;
        &lt;li&gt;&lt;span name=&quot;name&quot;&gt;User 5&lt;/span&gt;&lt;/li&gt;
        &lt;li&gt;&lt;span name=&quot;name&quot;&gt;User 6&lt;/span&gt;&lt;/li&gt;
    &lt;/ul&gt;
    &lt;li class=&quot;template&quot;&gt;
        &lt;div class=&quot;name&quot;&gt;
            &lt;a&gt;%[name]&lt;/a&gt;
        &lt;/div&gt;
    &lt;/li&gt;
    &lt;div class=&quot;filter-no-results quote&quot;&gt;
        No results found
    &lt;/div&gt;
    &lt;div class=&quot;filter-more&quot;&gt;
        &lt;span class=&quot;button more&quot;&gt;Load more&lt;/span&gt;
        &lt;span class=&quot;button load&quot;&gt;Loading&lt;/span&gt;
    &lt;/div&gt;
&lt;/ul&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-sort</span></td>
                <td><span class="highlight">string</span></td>
                <td>Textual value that respects field:direction structure to define the default and initial sorting.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-number_records</span></td>
                <td><span class="highlight">integer</span></td>
                <td>If set overrides the default number of records to be present per each load (set to minus one for infinite).</td>
            </tr>
            <tr>
                <td><span class="highlight">data-no_input</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If the search input field should not be displayed and used for the filter.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-infinite</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If infinite scrolling should be used.</td>
            </tr>
        </table>

        <table class="table-data">
            <tr>
                <td><span class="highlight">selected( row )</span></td>
                <td class="description">Raised for each of the elements (lines) once they are selected.</td>
            </tr>
            <tr>
                <td><span class="highlight">update( filterValue )</span></td>
                <td class="description">Triggers the reloading of the filter data (search query can be optionally provided).</td>
            </tr>
            <tr>
                <td><span class="highlight">update_start( )</span></td>
                <td class="description">Triggered when a new remote query is started.</td>
            </tr>
            <tr>
                <td><span class="highlight">update_complete( )</span></td>
                <td class="description">Called at the end of each refresh operation (remote data received).</td>
            </tr>
        </table>

        <p>The following classes are added to the component during it's lifecycle:</p>

        <table class="table-data">
            <tr>
                <td><span class="highlight">no-contents</span></td>
                <td>When there are no children in the filter.</td>
            </tr>
            <tr>
                <td><span class="highlight">no-input</span></td>
                <td>If the filter has no text field associated.</td>
            </tr>
            <tr>
                <td><span class="highlight">loading</span></td>
                <td>While the filter is making a remote request.</td>
            </tr>
        </table>

    </div>
</section>
