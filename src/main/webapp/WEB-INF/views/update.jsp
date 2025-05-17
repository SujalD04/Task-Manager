<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Update Task</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #e0f7fa, #f1f8e9);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .card {
            border: none;
            border-radius: 1rem;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
            animation: fadeIn 0.8s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .form-control:focus {
            box-shadow: 0 0 5px rgba(33, 150, 243, 0.5);
            border-color: #2196f3;
        }

        .form-floating label {
            color: #6c757d;
        }

        .badge-status {
            font-size: 0.85rem;
            padding: 0.5em 0.7em;
        }
    </style>
</head>
<body class="d-flex align-items-center justify-content-center min-vh-100">

<div class="card p-4 w-100" style="max-width: 600px;">
    <h3 class="text-center mb-4"><i class="fas fa-edit me-2"></i>Edit Task</h3>

    <form action="${pageContext.request.contextPath}/updateTask" method="post">
        <input type="hidden" name="id" value="${task.id}" />

        <div class="form-floating mb-3">
            <input type="text" name="title" class="form-control" id="title" value="${task.title}" required />
            <label for="title">Title</label>
        </div>

        <div class="form-floating mb-3">
            <textarea name="description" class="form-control" placeholder="Description" id="description" style="height: 120px">${task.description}</textarea>
            <label for="description">Description</label>
        </div>

        <div class="form-floating mb-3">
            <select name="status" class="form-select" id="statusSelect" onchange="updateBadge()">
                <option value="PENDING" ${task.status == 'PENDING' ? 'selected' : ''}>Pending</option>
                <option value="DONE" ${task.status == 'DONE' ? 'selected' : ''}>Done</option>
            </select>
            <label for="statusSelect">Status</label>
        </div>

        <div class="mb-3 text-end">
            <span id="statusBadge" class="badge badge-status ${task.status == 'DONE' ? 'bg-success' : 'bg-warning text-dark'}">
                ${task.status}
            </span>
        </div>

        <div class="d-grid gap-2 d-sm-flex justify-content-sm-end">
            <button type="submit" class="btn btn-primary px-4"><i class="fas fa-save me-2"></i>Update</button>
            <a href="/" class="btn btn-outline-secondary px-4"><i class="fas fa-times me-2"></i>Cancel</a>
        </div>
    </form>
</div>

<script>
    function updateBadge() {
        const status = document.getElementById('statusSelect').value;
        const badge = document.getElementById('statusBadge');
        badge.textContent = status;

        if (status === 'DONE') {
            badge.className = 'badge badge-status bg-success';
        } else {
            badge.className = 'badge badge-status bg-warning text-dark';
        }
    }
</script>

</body>
</html>
