<section id="slideshow">
    <h1 class="line">Slideshow</h1>
    <div class="section-contents">
        <p></p>
        <div class="box box-white">
            <div class="slideshow" data-window="true">
                <ul class="items">
                    <li class="item">
                        <span data-name="name">UXF</span>
                        <span data-name="image">http://uxf.hive.pt/res/logo.png</span>
                        <span data-name="url">http://uxf.hive.pt/</span>
                        <span data-name="description">Simple client side framework for people who want fast results.</span>
                    </li>
                    <li class="item">
                        <span data-name="name">Appier</span>
                        <span data-name="image">http://appier.hive.pt/res/logo.png</span>
                        <span data-name="url">http://appier.hive.pt/</span>
                        <span data-name="description">Joyful Python Web App development.</span>
                    </li>
                    <li class="item">
                        <span data-name="name">Netius</span>
                        <span data-name="image">http://netius.hive.pt/res/logo.png</span>
                        <span data-name="url">http://netius.hive.pt/</span>
                        <span data-name="description">Fast and readable async non-blocking network apps.</span>
                    </li>
                </ul>
                <div class="slideshow-details">
                    <p data-name="description"></p>
                </div>
            </div>
        </div>

<pre class="code language-markup">
&lt;div class=&quot;slideshow&quot; data-window=&quot;true&quot;&gt;
    &lt;ul class=&quot;items&quot;&gt;
        &lt;li class=&quot;item&quot;&gt;
            &lt;span data-name=&quot;name&quot;&gt;UXF&lt;/span&gt;
            &lt;span data-name=&quot;image&quot;&gt;http://uxf.hive.pt/res/logo.png&lt;/span&gt;
            &lt;span data-name=&quot;url&quot;&gt;http://uxf.hive.pt/&lt;/span&gt;
            &lt;span data-name=&quot;description&quot;&gt;Simple client side framework for people who want fast results.&lt;/span&gt;
        &lt;/li&gt;
        &lt;li class=&quot;item&quot;&gt;
            &lt;span data-name=&quot;name&quot;&gt;Appier&lt;/span&gt;
            &lt;span data-name=&quot;image&quot;&gt;http://appier.hive.pt/res/logo.png&lt;/span&gt;
            &lt;span data-name=&quot;url&quot;&gt;http://appier.hive.pt/&lt;/span&gt;
            &lt;span data-name=&quot;description&quot;&gt;Joyful Python Web App development.&lt;/span&gt;
        &lt;/li&gt;
        &lt;li class=&quot;item&quot;&gt;
            &lt;span data-name=&quot;name&quot;&gt;Netius&lt;/span&gt;
            &lt;span data-name=&quot;image&quot;&gt;http://netius.hive.pt/res/logo.png&lt;/span&gt;
            &lt;span data-name=&quot;url&quot;&gt;http://netius.hive.pt/&lt;/span&gt;
            &lt;span data-name=&quot;description&quot;&gt;Fast and readable async non-blocking network apps.&lt;/span&gt;
        &lt;/li&gt;
    &lt;/ul&gt;
    &lt;div class=&quot;slideshow-details&quot;&gt;
        &lt;p data-name=&quot;description&quot;&gt;&lt;/p&gt;
    &lt;/div&gt;
&lt;/div&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-animation</span></td>
                <td><span class="highlight">string { "fade" or "static" }</span></td>
                <td>The animation to perform. <span class="highlight">fade</span> by default.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-window</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If the slide URL should be opened in a new window.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-paused</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If the slideshow should not move automatically.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-selector</span></td>
                <td><span class="highlight">string</span></td>
                <td>Selector for an element that will trigger the evaluation when its value changes.</td>
            </tr>
        </table>
    </div>
</section>
