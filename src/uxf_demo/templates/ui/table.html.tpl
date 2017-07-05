<section id="table-sec">
    <h1 class="line">Table</h1>
    <div class="section-contents">

        <p>A table can be made editable by adding the class <span class="highlight">table-edit</span> and a row as a template.</p>

        <table class="table table-data table-edit" data-maximum_rows="5">
            <tbody>
                <tr class="template">
                    <td>cell 1</td>
                    <td>cell 2</td>
                </tr>
                <tr>
                    <td>cell 1</td>
                    <td>cell 2</td>
                </tr>
                <tr>
                    <td>cell 1</td>
                    <td>cell 2</td>
                </tr>
            </tbody>
        </table>

<pre class="code language-markup">
 &lt;table class=&quot;table table-data table-edit&quot; data-maximum_rows=&quot;5&quot;&gt;
    &lt;tbody&gt;
        &lt;tr class=&quot;template&quot;&gt;
            &lt;td&gt;cell 1&lt;/td&gt;
            &lt;td&gt;cell 2&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;cell 1&lt;/td&gt;
            &lt;td&gt;cell 2&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;cell 1&lt;/td&gt;
            &lt;td&gt;cell 2&lt;/td&gt;
        &lt;/tr&gt;
    &lt;/tbody&gt;
&lt;/table&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-maximum_rows</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The maximum number of rows of the table.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-no_paste</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If the paste feature should be disabled for the table.</td>
            </tr>
        </table>

        <table class="table-data">
            <tr>
                <td><span class="highlight">created_line( line )</span></td>
                <td>Raised when a new line is created for the table any extra operation per line should be done here.</td>
            </tr>
          <tr>
                <td><span class="highlight">removed_line ( line )</span></td>
                <td>Triggered when a line is removed from the table, any cleanup operation should be done here.</td>
            </tr>
            <tr>
                <td><span class="highlight">value_change( element )</span></td>
                <td>Called whenever a change occured in the table (eg: line removed, line added).</td>
            </tr>
        </table>

    </div>
</section>
