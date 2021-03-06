<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/includes.jsp"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="<c:url value="/resources/bower_components/jquery/jquery.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/bower_components/material-design-lite/material.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/bower_components/bootstrap/js/bootstrap.min.js" />"></script>
	<script type="text/javascript"
	src="https://ajax.aspnetcdn.com/ajax/knockout/knockout-3.3.0.js"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/new-product.js"/>"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="<c:url value="/resources/bower_components/bootstrap/css/bootstrap.min.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/bower_components/material-design-lite/material.min.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/main-stylesheet.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/new-product.css" />">

<style>
	.mdl-radio{
		margin-right: 32px;
	}
</style>
<title>ShakePoint</title>
</head>
<body>
	<div class="mdl-layout__container">
		<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
			<jsp:include page='/WEB-INF/views/shared/shakepoint-menu.jsp'>
				<jsp:param name="visible" value="1" />
			</jsp:include>
			<main class="mdl-layout__content">
			<div class="page-content text-center center-block">
				<div class="mdl-card mdl-shadow--4dp center-block">
					<div class="mdl-card__title center-block">
						<h3>Crear producto</h3>
					</div>
					<div class="mdl-card__supporting-text text-center">
						<form name="new-product-form" role="form" method="POST"
							action="<c:url value="new-product"/>" enctype="multipart/form-data">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
							<div class="form-group ">
								<div class="mdl-textfield mdl-js-textfield center">
									<input name="name" class="mdl-textfield__input center"
										id="name" type="text" path="name" /> <label
										class="mdl-textfield__label" for="name" path="name">Nombre
										del producto...</label>
								</div>
							</div>
							<div class="form-group">
								<div class="mdl-textfield mdl-js-textfield">
									<input name="price" class="mdl-textfield__input center"
										path="price" type="number" id="price" /> <label
										class="mdl-textfield__label" path="price" for="price">Precio</label>
								</div>
							</div>
							<div class="form-group">
								<div class="mdl-textfield mdl-js-textfield">
									<textarea name="description"
										class="mdl-textfield__input center" path="description"
										id="description" rows="5"></textarea>
									<label class="mdl-textfield__label" path="description"
										for="description">Descripción del producto</label>
								</div>
							</div>
							
							<div id="fileGroup" style="display:none;" class="form-group">
								<input class="mdl-button mdl-js-button center-block" name="file" type="file">
							</div>
							
							<div id="urlGroup" class="form-group">
								<div class="mdl-textfield mdl-js-textfield">
									<input name="logoUrl" class="mdl-textfield__input center"
										path="logoUrl" type="text" id="logoUrl" /> <label
										class="mdl-textfield__label" path="logoUrl" for="logoUrl">Pega la URL del logo para el producto</label>
								</div>
							</div>

							<div id="engineUseTimeGroup" class="form-group">
                            								<div class="mdl-textfield mdl-js-textfield">
                            									<input name="engineUseTime" class="mdl-textfield__input center"
                            										path="engineUseTime" type="text" id="engineUseTime" /> <label
                            										class="mdl-textfield__label" path="engineUseTime" for="engineUseTime">Tiempo que se usará el motor para preparar la bebida</label>
                            	</div>
                            </div>


                            <div class="form-group">
                                <label for="nutritionalInfo">Selecciona un archivo local para la información nutrimental</label>
                                <input id="nutritionalInfo" style="margin:0 auto !important; width:50%;" name="nutritionalData" type="file" accept=".jpg, .jpeg">
                            </div>

                            <div class="form-group">
                                <select style="width: 60%;height: 36px;" class="center-block" name="productType">
                                    <c:forEach items="${availableProductTypes}" var="productType">
                                        <option value="${productType}">${productType}</option>
                                    </c:forEach>
                                </select>
                            </div>
							
							<%--<div id="url-selection-options" class="form-group">
							 	<label class="mdl-radio mdl-js-radio mdl-js-ripple-effect"
									for="selectFileInput">
									<input data-bind="value: urlOption" type="radio" id="selectFileInput"
									class="mdl-radio__button" name="options" value="1">
									<span class="mdl-radio__label">Elegir logo desde PC</span>
								</label> <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect"
									for="typeUrlInput"> <input data-bind="value: urlOption" type="radio" id="typeUrlInput"
									class="mdl-radio__button" name="options" value="2"> <span
									class="mdl-radio__label">URL del logo</span>
								</label>
							</div>--%>

							<div class="row">
								<button type="submit" id="signInButton"
									class="mdl-button mdl-js-button mdl-button--colored"
									style="margin-bottom: 15px;">Guardar</button>
							</div>
						</form>
						<c:if test="${not empty error}">
							<div class="alert alert-danger alert-dismissible" role="alert">
								<button type="button" class="close" data-dismiss="alert"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<strong>Error!</strong> ${error}
							</div>
						</c:if>
					</div>
				</div>
			</div>
			</main>
		</div>
	</div>
</body>
</html>
