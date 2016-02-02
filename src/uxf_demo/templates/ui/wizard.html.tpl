
<section id="wizard">
    <h1 class="line">Wizard</h1>
    <div class="section-contents">

        <p>
            If you need to guide the user through a process with multiple steps
            you can easily add a stack of panels with navigation and breadcrumbs.
        </p>

        <div class="wizard box box-white">
            <ul class="breadcrumbs">
                    <li>First</li>
                    <li>Second</li>
                    <li>Third</li>
            </ul>
            <div class="panel-stack clear">
                <div class="panel"><h3>First Step</h3></div>
                <div class="panel"><h3>Second Step</h3></div>
                <div class="panel"><h3>Third Step</h3></div>
            </div>
            <div>
                <a class="button-previous">Previous</a>
                <a class="button-next">Next</a>
                <a class="button-finish">Finish</a>
            </div>
        </div>

<pre class="code language-markup">
&lt;div class=&quot;wizard&quot;&gt;
    &lt;ul class=&quot;breadcrumbs&quot;&gt;
        &lt;li&gt;First&lt;/li&gt;
        &lt;li&gt;Second&lt;/li&gt;
        &lt;li&gt;Third&lt;/li&gt;
    &lt;/ul&gt;
    &lt;div class=&quot;panel-stack&quot;&gt;
        &lt;div class=&quot;panel&quot;&gt;&lt;h3&gt;First Step&lt;/h3&gt;&lt;/div&gt;
        &lt;div class=&quot;panel&quot;&gt;&lt;h3&gt;Second Step&lt;/h3&gt;&lt;/div&gt;
        &lt;div class=&quot;panel&quot;&gt;&lt;h3&gt;Third Step&lt;/h3&gt;&lt;/div&gt;
    &lt;/div&gt;
    &lt;div&gt;
        &lt;a class=&quot;button-previous&quot;&gt;Previous&lt;/a&gt;
        &lt;a class=&quot;button-next&quot;&gt;Next&lt;/a&gt;
        &lt;a class=&quot;button-finish&quot;&gt;Finish&lt;/a&gt;
    &lt;/div&gt;
&lt;/div&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-index</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The wizard's starting index. Set to 0 by default.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-first_index</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The wizard's first index. Set to 0 by default.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-last_index</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The wizard's last index. If not set is equal to the number of panels.</td>
            </tr>
        </table>

        <table class="table-data">
            <tr>
                <td><span class="highlight">index_changed( index )</span></td>
                <td>Triggered when the wizard's index changes.</td>
            </tr>
        </table>

    </div>
</section>
