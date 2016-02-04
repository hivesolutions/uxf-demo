<section id="timestamp-sec">
    <h1 class="line">Timestamp</h1>
    <div class="section-contents">

        <p>
            When communicating between the client side and the server side it's
            important to remaining dependent on the client's local data. The best
            way to do it is  transferring a utc timestmap representing the specified
            time and then converting  it to local data using the timestamp component.
        </p>

        <div class="box box-white">
            <div class="timestamp">1317118297</div>
        </div>

<pre class="code language-markup">
&lt;div class=&quot;timestamp&quot;&gt;1317118297&lt;/div&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-format</span></td>
                <td><span class="highlight">string</span></td>
                <td>Format for the date to be displayed, the example containing the complete format set is:
                <span class="highlight">%Y-%m-%d %H:%M:%S</span>.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-utc</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If the date should be shown in the <span class="highlight">UTC</span> timezone instead of the local
                timezone..</td>
            </tr>
        </table>

    </div>
</section>
