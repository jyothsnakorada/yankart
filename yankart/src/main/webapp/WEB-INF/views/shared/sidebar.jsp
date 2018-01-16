 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <h1 class="my-4" style="color:green;">GO GREEN!!!</h1>
 <p class="text-success"></p>
          <div class="list-group">
         
           <c:forEach items="${categories}" var="category">
		<a href="${contextRoot}/show/category/${category.id}/products" class="list-group-item" id="a_${category.name}">${category.name}</a>
	</c:forEach>

          </div><br/><br/><br/>
       <div id="container_2"><img src="${images}/logo.gif" /></div>