<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col md-12">
				<h1 class="text-center mb-3">Welcome to ProductApp</h1>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">S.No</th>
							<th scope="col">Product Name</th>
							<th scope="col">Product Type</th>
							<th scope="col">Product Category</th>
							<th scope="col">Product Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${products }" var="p">
							<tr>
								<th scope="row">${p.id }</th>
								<td>${p.name }</td>
								<td>${p.type }</td>
								<td>${p.category }</td>
								<td class="font-weight-bold">&#8377; ${p.price }</td>
								<td><a href="delete/${p.id }"><i
										class="fa-sharp fa-solid fa-trash text-danger" style="font-size: 30px;"></i></a> &nbsp;&nbsp;<a
									href="update/${p.id }"><i
										class="fa-sharp fa-solid fa-pen-nib" style="font-size: 30px;"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="container text-center">
					<a href="add-product" class="btn btn-outline-success">Add
						Product</a>
				</div>


			</div>
		</div>
	</div>
</body>
</html>