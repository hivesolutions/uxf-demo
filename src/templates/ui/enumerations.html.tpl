<section id="number-formatter">
    <h1 class="line">Enumeration <span class="sub-title">convert numbers to text</span></h1>

    <p>It's important to be able to convert a number base enumeration into a string that describes
    the value in the enumeration. For this a mapping mechanism is required, and that's exactly what this
    component archives the <span class="highlight">mapping function</span>.</p>

    <div class="box">
        <div class="enumeration" data-enum="['car', 'bike', 'bus']">2</div>
    </div>

<pre class="prettyprint linenums">
&lt;div class=&quot;enumeration&quot; data-enum=&quot;['car', 'bike', 'bus'']&quot;&gt;2&lt;/div&gt;
</pre>

    <table>
        <tr>
            <td><span class="highlight">data-enum</span></td>
            <td><span class="highlight">string</span></td>
            <td>JSON string that contains the list of items for the enumeration. These values can assume any valid JSON data type.</td>
        </tr>
    </table>
</section>
