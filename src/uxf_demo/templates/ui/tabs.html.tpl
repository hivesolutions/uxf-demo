<section id="tabs">
    <h1 class="line">Tabs</h1>
    <div class="section-contents">

        <div class="box box-white">
            <div class="tab-panel">
                <div class="block-tabs">
                    <ul class="tabs-list tab-selectors">
                        <li>
                            <a class="tab-selector link active" href="#tab-home">Home</a>
                        </li>
                        <li>
                            <a class="tab-selector link" href="#tab-profile">Profile</a>
                        </li>
                        <li>
                            <a class="tab-selector link" href="#tab-messages">Messages</a>
                        </li>
                        <li>
                            <a class="tab-selector link" href="#tab-settings">Settings</a>
                        </li>
                    </ul>
                </div>
                <div id="tab-home" class="tab active">Home</div>
                <div id="tab-profile" class="tab">Profile</div>
                <div id="tab-messages" class="tab">Messages</div>
                <div id="tab-settings" class="tab">Settings</div>
            </div>
        </div>

<pre class="code language-markup">
&lt;div class=&quot;tab-panel&quot;&gt;
    &lt;div class=&quot;block-tabs&quot;&gt;
        &lt;ul class=&quot;tabs-list tab-selectors&quot;&gt;
            &lt;li&gt;
                &lt;a class=&quot;tab-selector link active&quot; href=&quot;#tab-home&quot;&gt;Home&lt;/a&gt;
            &lt;/li&gt;
            &lt;li&gt;
                &lt;a class=&quot;tab-selector link&quot; href=&quot;#tab-profile&quot;&gt;Profile&lt;/a&gt;
            &lt;/li&gt;
            &lt;li&gt;
                &lt;a class=&quot;tab-selector link&quot; href=&quot;#tab-messages&quot;&gt;Messages&lt;/a&gt;
            &lt;/li&gt;
            &lt;li&gt;
                &lt;a class=&quot;tab-selector link&quot; href=&quot;#tab-settings&quot;&gt;Settings&lt;/a&gt;
            &lt;/li&gt;
        &lt;/ul&gt;
    &lt;/div&gt;
    &lt;div id=&quot;tab-home&quot; class=&quot;tab active&quot;&gt;Home&lt;/div&gt;
    &lt;div id=&quot;tab-profile&quot; class=&quot;tab&quot;&gt;Profile&lt;/div&gt;
    &lt;div id=&quot;tab-messages&quot; class=&quot;tab&quot;&gt;Messages&lt;/div&gt;
    &lt;div id=&quot;tab-settings&quot; class=&quot;tab&quot;&gt;Settings&lt;/div&gt;
&lt;/div&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">tab_selected( element )</span></td>
                <td>Raised when a tab is selected.</td>
            </tr>
        </table>

    </div>
</section>
