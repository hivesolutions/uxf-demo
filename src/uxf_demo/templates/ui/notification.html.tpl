<section id="notification">
    <h1 class="line">Notification</h1>
    <div class="section-contents">
    <div class="box box-white">
        <div id="button-notification" class="button button-solid">Button with Notification Event</div>
    </div>

<pre class="code language-javascript">
$("body").uxnotification({
    title : "Notification Test",
    message : "Don't read this dummy text, it's a waste of your time.",
    timeout : 5000
});
</pre>

    <div class="box box-white">
        <div class="header-notification">
            <p class="link-close">Click to close this Header Notification</p>
        </div>
    </div>

<pre class="code language-markup">
&lt;div class=&quot;header-notification&quot;&gt;
    &lt;p class=&quot;link-close&quot;&gt;Click to close this Header Notification&lt;/p&gt;
&lt;/div&gt;
</pre>

    </div>
</section>
