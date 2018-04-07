<%@ attribute name="id" required="true" %>

<input type="text" id="${id}" name="${id}"/>
<script>
	$("#${id}").datepicker({dateFormat: "dd/mm/yy", locale: 'pt-br', changeMonth:true, yearRange:"1950:2018", changeYear:true});
</script>