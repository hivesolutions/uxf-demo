<section id="table">
    <h1 class="line">Table</h1>
    <div class="section-contents">
        <table class="table-data" class="table table-edit">
            <tr>
                <td>row 1, cell 1</td>
                <td>row 1, cell 2</td>
            </tr>
            <tr>
                <td>row 2, cell 1</td>
                <td>row 2, cell 2</td>
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
