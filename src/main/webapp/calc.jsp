<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calc</title>
    <jsp:include page="_header.jsp"/>
</head>
<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-sm-5">
            <form action="/calc" method="post">
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label" >Number 1</label>
                    <input type="number" name="num1" class="form-control" required id="exampleInputPassword1">
                </div>
                <select class="form-select" required name="operation" aria-label="Default select example">
                    <option disabled>Please select operation</option>
                    <option value="sum">sum</option>
                    <option value="min">min</option>
                </select>
                <div class="mb-3">
                    <label for="exampleInputPassword2" class="form-label">Number 2</label>
                    <input type="number" name="num2" class="form-control" required id="exampleInputPassword2">
                </div>
                <button type="submit" class="btn btn-primary">Calculate</button>
            </form>
            <%
                if (request.getAttribute("result") != null)  {
            %>

            <div class="alert alert-success" role="alert">
                <p>Result: ${requestScope.result}</p>
            </div>
            <% }
            %>
        </div>
    </div>

</div>



</body>
</html>
