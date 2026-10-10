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

        <p>
            The filters with the advanced panel (<span class="highlight">data-advanced</span>) keep their
            state in the URL of the page, with the search (<span class="highlight">filter_string</span>),
            the filters (<span class="highlight">filters[]</span>), the sort (<span class="highlight">sort</span>)
            and the view (<span class="highlight">view</span>) as parameters. The state is read when the filter
            starts and the URL is replaced on every change, so it survives a refresh and may be shared, as in the
            <a href="{{ url_for('index') }}?filters[]=country:equals:1&amp;sort=name:ascending&amp;view=table#filter-sec">users
            from Portugal sorted by name</a>.
        </p>

        <div class="box box-white">
            <ul class="filter entities-list list-list" data-advanced="1" data-number_records="3">
                <div class="data-source" data-url="{{ url_for('users_json') }}" data-type="json">
                    <ul class="order">
                        <li data-name="name" data-order="ascending">name</li>
                        <li data-name="age">age</li>
                    </ul>
                    <ul class="filtering">
                        <li data-name="name" data-type="string">name</li>
                        <li data-name="age" data-type="number">age</li>
                        <li data-name="created" data-type="date">created</li>
                        <li data-name="country" data-type="reference"
                            data-surl="{{ url_for('countries_json') }}" data-stype="json"
                            data-sdisplay_attribute="name" data-svalue_attribute="object_id">country</li>
                    </ul>
                </div>
                <li class="template">
                    <div class="list-view">
                        <div class="name">
                            <a>%[name]</a>
                        </div>
                    </div>
                    <div class="table-view">
                        <div class="name">
                            <a>%[name]</a> (%[age])
                        </div>
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
&lt;ul class=&quot;filter entities-list list-list&quot; data-advanced=&quot;1&quot; data-number_records=&quot;3&quot;&gt;
    &lt;div class=&quot;data-source&quot; data-url=&quot;users.json&quot; data-type=&quot;json&quot;&gt;
        &lt;ul class=&quot;order&quot;&gt;
            &lt;li data-name=&quot;name&quot; data-order=&quot;ascending&quot;&gt;name&lt;/li&gt;
            &lt;li data-name=&quot;age&quot;&gt;age&lt;/li&gt;
        &lt;/ul&gt;
        &lt;ul class=&quot;filtering&quot;&gt;
            &lt;li data-name=&quot;name&quot; data-type=&quot;string&quot;&gt;name&lt;/li&gt;
            &lt;li data-name=&quot;age&quot; data-type=&quot;number&quot;&gt;age&lt;/li&gt;
            &lt;li data-name=&quot;created&quot; data-type=&quot;date&quot;&gt;created&lt;/li&gt;
            &lt;li data-name=&quot;country&quot; data-type=&quot;reference&quot;
                data-surl=&quot;countries.json&quot; data-stype=&quot;json&quot;
                data-sdisplay_attribute=&quot;name&quot; data-svalue_attribute=&quot;object_id&quot;&gt;country&lt;/li&gt;
        &lt;/ul&gt;
    &lt;/div&gt;
    &lt;li class=&quot;template&quot;&gt;
        &lt;div class=&quot;list-view&quot;&gt;
            &lt;div class=&quot;name&quot;&gt;
                &lt;a&gt;%[name]&lt;/a&gt;
            &lt;/div&gt;
        &lt;/div&gt;
        &lt;div class=&quot;table-view&quot;&gt;
            &lt;div class=&quot;name&quot;&gt;
                &lt;a&gt;%[name]&lt;/a&gt; (%[age])
            &lt;/div&gt;
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
                <td><span class="highlight">data-advanced</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If the advanced panel (filters, sort and views) should be displayed, the state of the filter is kept in the URL.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-no_state</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If the state of a filter with the advanced panel should not be read from and written to the URL.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-infinite</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If infinite scrolling should be used.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-sick</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The number of milliseconds in between allowing multiple infinite loading requests (sick time).</td>
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
                <td><span class="highlight">update_complete( reset, templateItems )</span></td>
                <td class="description">Called at the end of each refresh operation (remote data received).</td>
            </tr>
            <tr>
                <td><span class="highlight">data( validItems, moreItems )</span></td>
                <td class="description">Called whenever some remote data is received (before layout update).</td>
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
