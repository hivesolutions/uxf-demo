<section id="password-meter">
    <h1 class="line">Password Meter <span class="sub-title">for verified passwords</span></h1>

    <p>If a password field requires some king of verification for strength there's the password
    meter component for that. Just use the normal <span class="highlight">text-field</span> component and associate
    the password meter using the <span class="highlight">data-target</span> attribute.</p>

    <!-- password meter -->
    <div class="box box-white">
        <input id="password" type="password" class="text-field field-margin" name="" value="" />
        <div class="password-meter" data-target="#password"></div>
    </div>

<pre class="prettyprint linenums">
&lt;input id=&quot;password&quot; type=&quot;password&quot; class=&quot;text-field&quot; /&gt;
&lt;div class=&quot;password-meter&quot; data-target=&quot;#password&quot;&gt;&lt;/div&gt;
</pre>

    <table>
        <tr>
            <td><span class="highlight">data-target</span></td>
            <td><span class="highlight">string</span></td>
            <td>Selector string for the target text-field.</td>
        </tr>
    </table>
</section>
