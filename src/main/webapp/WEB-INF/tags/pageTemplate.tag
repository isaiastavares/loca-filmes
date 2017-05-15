<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ attribute name="titulo" required="true" %>

<!DOCTYPE html>
<html>
<head>
    <c:url value="/" var="contextPath" />

    <link rel="icon" type="image/png" href="${contextPath}resources/images/DB_16х16.png">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Site para gerenciar sua Locadora de Filmes">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${titulo} - Loca Filmes</title>

    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">

    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Material Design Lite">

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="${contextPath}resources/images/touch/ms-touch-icon-144x144-precomposed.png">
    <meta name="msapplication-TileColor" content="#3372DF">

    <link href='https://fonts.googleapis.com/css?family=Roboto:400,500,300,100,700,900' rel='stylesheet'
          type='text/css'>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- inject:css -->
    <link rel="stylesheet" href="${contextPath}resources/css/lib/getmdl-select.min.css">
    <link rel="stylesheet" href="${contextPath}resources/css/lib/nv.d3.css">
    <link rel="stylesheet" href="${contextPath}resources/css/application.css">
    <!-- endinject -->

</head>
<body>
	<div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header is-small-screen">
		<%@ include file="/WEB-INF/views/templates/cabecalho.jsp" %>
		
		<%@ include file="/WEB-INF/views/templates/menu.jsp" %>
	
	    <jsp:doBody />
	</div>
	
	<!-- inject:js -->
	<script src="${contextPath}resources/js/d3.js"></script>
	<script src="${contextPath}resources/js/getmdl-select.min.js"></script>
	<script src="${contextPath}resources/js/material.js"></script>
	<script src="${contextPath}resources/js/nv.d3.js"></script>
	<script src="${contextPath}resources/js/widgets/employer-form/employer-form.js"></script>
	<script src="${contextPath}resources/js/widgets/line-chart/line-chart-nvd3.js"></script>
	<script src="${contextPath}resources/js/widgets/pie-chart/pie-chart-nvd3.js"></script>
	<script src="${contextPath}resources/js/widgets/table/table.js"></script>
	<script src="${contextPath}resources/js/widgets/todo/todo.js"></script>
	<!-- endinject -->
</body>
</html>