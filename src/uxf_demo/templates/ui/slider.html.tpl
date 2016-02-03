<section id="sliders">
    <h1 class="line">Slider</h1>
    <div class="section-contents">

        <p>
            This component is a window level slider that shows a sequence of panels and
            can be controlled using either a manual (arrow based) or automated approach.
        </p>

        <div class="box box-white">
            <div id="button-slider" class="button button-solid">Show Slider</div>
        </div>

<pre class="code language-markup">
&lt;div id=&quot;slider&quot; class=&quot;slider&quot;&gt;
    &lt;div class=&quot;slider-panel&quot;&gt;First&lt;/div&gt;
    &lt;div class=&quot;slider-panel&quot;&gt;Second&lt;/div&gt;
    &lt;div class=&quot;slider-panel&quot;&gt;Third&lt;/div&gt;
&lt;/div&gt;
</pre>

<pre class="code language-markup">
&lt;a id=&quot;button-slider&quot; class=&quot;link link-blue&quot; href=&quot;#slider&quot;&gt;Show Slider&lt;/a&gt;
</pre>

<pre class="code language-javascript">
$("#slider").uxslider("show");
</pre>

        <p>The slider supports the following methdods:</p>

        <table class="table-data">
            <tr>
                <td><span class="highlight">show</span></td>
                <td>Presents the slider.</td>
            </tr>
            <tr>
                <td><span class="highlight">hide</span></td>
                <td>Dismisses the slider.</td>
            </tr>
            <tr>
                <td><span class="highlight">next</span></td>
                <td>Moves to the next slide.</td>
            </tr>
            <tr>
                <td><span class="highlight">previous</span></td>
                <td>Moves to the previous slide.</td>
            </tr>
        </table>

    </div>
</section>
