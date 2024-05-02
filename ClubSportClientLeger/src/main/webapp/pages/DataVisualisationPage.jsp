<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="./components/Header.jsp" />
<div class="dataVisualisationPage">
<div class="datadisplayer">
	<jsp:include page="./components/FederationDataDisplayer.jsp" />
	<div class="diagramsdisplayer">
		<div class="licenseRepartitionGraph">
		  <jsp:include page="./components/LicenseRepartitionGraph.jsp" />
		</div>
		<div class="statsIndicatorDiagram">
		   <jsp:include page="./components/StatsIndicatorDiagram.jsp" />
		</div>
	</div>
</div>
<div class="federation-map">
 <jsp:include page="./components/Map2.jsp" />
</div>
 </div> 

<jsp:include page="./components/Footer.jsp" />
</body>
</html>