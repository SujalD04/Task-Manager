<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Task Manager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #dde6f1, #f7f9fb);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .container-card {
            max-width: 1100px;
            margin: 60px auto;
            padding: 2rem;
            border-radius: 1.5rem;
            background: rgba(255, 255, 255, 0.95);
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(8px);
            animation: fadeIn 0.6s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 1.5rem;
        }

        .header h2 {
            font-weight: 700;
            color: #343a40;
        }

        .table thead {
            background-color: #f8f9fa;
        }

        .table tbody tr:hover {
            background-color: #f1f3f5;
            transition: background-color 0.3s ease;
        }

        .badge-status {
            padding: 0.45em 0.8em;
            font-size: 0.85rem;
            border-radius: 0.5rem;
        }

        .btn i {
            margin-right: 5px;
        }

        .btn-outline-warning:hover {
            background-color: #ffc107;
            color: #fff;
        }

        .btn-outline-danger:hover {
            background-color: #dc3545;
            color: #fff;
        }

        .no-tasks {
            text-align: center;
            color: #6c757d;
            padding: 2rem 0;
            font-size: 1.1rem;
            font-style: italic;
        }

        @media (max-width: 768px) {
            .header {
                flex-direction: column;
                align-items: flex-start;
                gap: 1rem;
            }

            .table th, .table td {
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>

<div class="container container-card">
    <div class="header">
        <h2><i class="fas fa-tasks me-2"></i>Task Dashboard</h2>
        <a href="create" class="btn btn-success">
            <i class="fas fa-plus-circle"></i>Add New Task
        </a>
    </div>

    <c:choose>
        <c:when test="${empty tasks}">
            <div class="no-tasks">
                <i class="fas fa-inbox fa-2x mb-3"></i><br>
                No tasks found. Start by adding a new task.
            </div>
        </c:when>
        <c:otherwise>
            <div class="table-responsive">
                <table class="table table-hover align-middle">
                    <thead class="table-light">
                    <tr>
                        <th><i class="fas fa-heading"></i> Title</th>
                        <th><i class="fas fa-align-left"></i> Description</th>
                        <th><i class="fas fa-check-circle"></i> Status</th>
                        <th><i class="fas fa-cogs"></i> Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="task" items="${tasks}">
                        <tr>
                            <td>${task.title}</td>
                            <td>${task.description}</td>
                            <td>
                                <span class="badge badge-status
                                    ${task.status == 'DONE' ? 'bg-success' : 'bg-warning text-dark'}">
                                        ${task.status}
                                </span>
                            </td>
                            <td>
                                <a href="update?id=${task.id}" class="btn btn-sm btn-outline-warning me-2">
                                    <i class="fas fa-pen"></i>Edit
                                </a>
                                <a href="delete?id=${task.id}" class="btn btn-sm btn-outline-danger"
                                   onclick="return confirm('Are you sure you want to delete this task?')">
                                    <i class="fas fa-trash"></i>Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:otherwise>
    </c:choose>
</div>

</body>
</html>
