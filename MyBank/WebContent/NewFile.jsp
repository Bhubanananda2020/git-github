<!DOCTYPE html>
<html>
<body>


<input type="text" name="te" value="1" readonly/>
<input type="text" name="val" value="3" readonly/>
<input type="text" name="gir" value="5" readonly/>
<input type="text" name="sad" value="13" readonly/>

<input type="button" name="edit" value="Edit" onclick="myFunction()"/>


<script>
function myFunction() {
	  for(var i=0; i < document.getElementsByTagName("input").length-1;i++)
	     document.getElementsByTagName("input")[i].removeAttribute('readonly');
	}
</script>
</body>
</html>
