<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Task</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-4">
<h2>Create Task</h2>

<form action="save" method="post">
    <div class="mb-3">
        <label>Title</label>
        <input type="text" name="title" class="form-control" required />
    </div>
    <div class="mb-3">
        <label>Description</label>
        <textarea name="description" class="form-control"></textarea>
    </div>
    <div class="mb-3">
        <label>Status</label>
        <select name="status" class="form-control">
            <option value="PENDING">Pending</option>
            <option value="DONE">Done</option>
        </select>
    </div>
    <button type="submit" class="btn btn-success">Save</button>
    <a href="/" class="btn btn-secondary">Cancel</a>
</form>
</body>
</html>
