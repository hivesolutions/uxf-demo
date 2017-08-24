<section id="windows-sec">
    <h1 class="line">Window</h1>
    <div class="section-contents">
        <div id="window" class="window window-hide">
            <h1>Window Title</h1>
            <p>Window text with goes under the window title</p>
            <div class="window-buttons">
                <div class="right button button-red button-cancel close-button">Cancel</div>
                <div class="right button button-green button-confirm accept-button">Confirm</div>
            </div>
        </div>

        <div class="box box-white">
            <div id="button-window" class="button button-solid" data-window_open="#window">Show Window</div>
        </div>

<pre class="code language-markup">
&lt;div id=&quot;window&quot; class=&quot;window window-hide&quot;&gt;
    &lt;h1&gt;Window Title&lt;/h1&gt;
    &lt;p&gt;Window text with goes under the window title&lt;/p&gt;
    &lt;div class=&quot;window-buttons&quot;&gt;
        &lt;div class=&quot;right button button-red button-cancel close-button&quot;&gt;Cancel&lt;/div&gt;
        &lt;div class=&quot;right button button-green button-confirm accept-button&quot;&gt;Confirm&lt;/div&gt;
    &lt;/div&gt;
&lt;/div&gt;
</pre>

<pre class="code language-markup">
&lt;div class=&quot;button&quot; data-window_open=&quot;#window&quot;&gt;Show Window&lt;/div&gt;
</pre>

<pre class="code language-javascript">
$("#window").uxwindow("show");
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-padding</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The size in pixels to be used as the padding for the maximum window dimensions.</td>
            </tr>
        </table>

        <table class="table-data">
            <tr>
                <td><span class="highlight">shown( )</span></td>
                <td>Triggered when the window is presented.</td>
            </tr>
            <tr>
                <td><span class="highlight">hidden( )</span></td>
                <td>Triggered when the window is dismissed.</td>
            </tr>
            <tr>
                <td><span class="highlight">success( )</span></td>
                <td>Triggered when the window is dismissed by clicking the accept button.</td>
            </tr>
            <tr>
                <td><span class="highlight">cancel( )</span></td>
                <td>Triggered when the window is dismissed by clicking the cancel button.</td>
            </tr>
        </table>

    </div>
</section>
