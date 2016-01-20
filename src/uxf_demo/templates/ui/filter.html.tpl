<section id="filter">
    <h1  class="line">Filter</h1>
    <div class="section-contents">
        <p>May be used to list dynamic content in a table like environment.</p>

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
        </table>

        <table class="table-data">
            <tr>
                <td><span class="highlight">selected( row )</span></td>
                <td class="description">Raised for each of the elements (lines) once they are selected.</td>
            </tr>
            <tr>
                <td><span class="highlight">update_complete( )</span></td>
                <td class="description">Called at the end of each refresh operation (remote data received).</td>
            </tr>
        </table>
    </div>
</section>
