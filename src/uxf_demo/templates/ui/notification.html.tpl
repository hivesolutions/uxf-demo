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
            <span>This is a dummy notification</span>
            <a class="link link-close">Click to close</a>
        </div>
    </div>

<pre class="code language-markup">
&lt;div class=&quot;header-notification&quot;&gt;
    &lt;span&gt;This is a dummy notification&lt;/span&gt;
    &lt;a class=&quot;link link-close&quot;&gt;Click to close&lt;/a&gt;
&lt;/div&gt;
</pre>

    </div>
</section>
