<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Update Task</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-4">
<h2>Edit Task</h2>

<form action="${pageContext.request.contextPath}/updateTask" method="post">
    <input type="hidden" name="id" value="${task.id}" />
    <div class="mb-3">
        <label>Title</label>
        <input type="text" name="title" class="form-control" value="${task.title}" required />
    </div>
    <div class="mb-3">
        <label>Description</label>
        <textarea name="description" class="form-control">${task.description}</textarea>
    </div>
    <div class="mb-3">
        <label>Status</label>
        <select name="status" class="form-control">
            <option value="PENDING" ${task.status == 'PENDING' ? 'selected' : ''}>Pending</option>
            <option value="DONE" ${task.status == 'DONE' ? 'selected' : ''}>Done</option>
        </select>
    </div>
    <button type="submit" class="btn btn-primary">Update</button>
    <a href="/" class="btn btn-secondary">Cancel</a>
</form>
</body>
</html>
