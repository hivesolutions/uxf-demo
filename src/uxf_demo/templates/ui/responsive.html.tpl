<section id="responsive">
    <h1 class="line">Responsive</h1>
    <div class="section-contents">
        <p>Some classes are also added to the <span class="highlight">body</span> based on the screen's dimensions.
        The pixel ranges can be overrided by setting the appropriate data attributes.
        The <span class="highlight">retina-s</span> class is added in retina screens.</p>
        <p>
            The width is indicated with these classes:
            <span class="highlight">mobile-s</span> / <span class="highlight">tablet-s</span> /
            <span class="highlight">desktop-s</span> / <span class="highlight">fat-s</span>
        </p>
        <table class="table-data">
            <tr>
                <th>Attribute</th><th>Default</th>
            </tr>
            <tr>
                <td><span class="highlight">data-tablet</span></td>
                <td>768</td>
            </tr>
            <tr>
                <td><span class="highlight">data-mobile</span></td>
                <td>420</td>
            </tr>
            <tr>
                <td><span class="highlight">data-slim</span></td>
                <td>960</td>
            </tr>
        </table>
        <p>
            The screen height is represented by the following classes:
            <span class="highlight">minimal-s</span> / <span class="highlight">small-s</span> /
            <span class="highlight">short-s</span> / <span class="highlight">average-s</span> /
            <span class="highlight">tall-s</span>
        </p>
        <table class="table-data">
            <tr><th>Attribute</th><th>Default</th></tr>
            <tr>
                <td><span class="highlight">data-minimal</span></td>
                <td>200</td>
            </tr>
            <tr>
                <td><span class="highlight">data-small</span></td>
                <td>320</td>
            </tr>
            <tr>
                <td><span class="highlight">data-short</span></td>
                <td>500</td>
            </tr>
            <tr>
                <td><span class="highlight">data-average</span></td>
                <td>800</td>
            </tr>
        </table>
        <p>
            The classes <span class="highlight">portrait-s</span> or <span class="highlight">landscape-s</span> are based on the device's ratio.
        </p>
        <table class="table-data">
            <tr>
                <td><span class="highlight">device_change( device )</span></td>
                <td>Triggered when the device changes. Can be <span class="highlight">desktop</span>, <span class="highlight">mobile</span> or <span class="highlight">tablet</span></td>
            </tr>
        </table>
    </div>
</section>
