<section id="style">
    <h1 class="line">Base</h1>
    <div class="section-contents">
    	<div class="section-function">
	   		<h2>uxcontent</h2>
	   		<p>Changes the text contents of an element without changing
	   		any of its child elements (only textual part).</p>
<pre class="code language-javascript">
jQuery("div.target").uxcontent("Hello World");
</pre>
    	</div>
		<h2>uxnumeric</h2>
   		<p>Creates a floating point value with possible precision
   		error into a less precise float with no rounding issues.</p>
   		<p>eg: 38.55 * 3.5 = 134,925 but in js this number is represented
   		as 134.92499999999998, to be able to represent it as 134.925 one
   		should use the <span class="highlight">uxnumeric</span></p>
<pre class="code language-javascript">
jQuery.uxnumeric(38.55 * 3.5);
</pre>
    </div>
</section>
