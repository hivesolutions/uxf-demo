<section id="table">
    <h1 class="line">Table <span class="sub-title">sort the numbers and letters</span></h1>

    <table class="table table-edit">
        <tr>
            <td>row 1, cell 1</td>
            <td>row 1, cell 2</td>
        </tr>
        <tr>
            <td>row 2, cell 1</td>
            <td>row 2, cell 2</td>
        </tr>
    </table>

    <h1 class="line">Notification <span class="sub-title">be notified</span></h1>

    <div class="box box-white">
        <div id="button-notification" class="button button-blue">Button with Notification Event</div>
    </div>

<pre class="code language-javascript">
$("body").uxnotification({
    title : "Notification Test",
    message : "Don't read this dummy text, it's a waste of your time.",
    timeout : 5000
});
</pre>
</section>
