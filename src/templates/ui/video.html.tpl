<section id="video">
    <h1 class="line">Video</h1>
    <div class="section-contents">
        <p>It's really nice to embedded videos in your existent html source base, the single
        most anoying problem is that for each video service provider there is a different iframe code.
        The video component provides a simple way to overcome ths problem just set the html code of it
        with the url of the video and that it. Currently supported services include: <span class="highlight">youtube</span>,
        <span class="highlight">vimeo</span> and <span class="highlight">dailymotion</span>.</p>
        <p>Additional configuration options are provided with <span class="highlight">data-width</span>,
        <span class="highlight">data-height</span>, ...</p>

        <div class="box box-white">
            <div class="video">http://www.youtube.com/watch?v=4XpnKHJAok8&feature=feedlik</div>
        </div>

<pre class="code language-markup">
&lt;div class=&quot;video&quot;&gt;http://www.youtube.com/watch?v=5nt3gE9dGHQ&lt;/div&gt;
</pre>

        <table>
            <tr>
                <td><span class="highlight">data-width</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The width in pixels for the video.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-height</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The height in pixels for the video.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-hd</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If the video should be shown in high definition (720p) by default.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-information</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If the video information (title, description, etc) should be displayed.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-chromeless</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If set the window chrome is not displayed.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-auto_play</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If the video should start playing when loaded.</td>
            </tr>
        </table>
    </div>
</section>
