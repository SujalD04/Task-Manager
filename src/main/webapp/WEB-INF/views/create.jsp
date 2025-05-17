<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Task</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #f7f8f9, #e9ecef);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .card {
            max-width: 600px;
            margin: 40px auto;
            padding: 30px;
            border-radius: 1rem;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
            animation: fadeIn 0.5s ease;
            background-color: white;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .form-label {
            font-weight: 600;
            margin-bottom: 5px;
        }

        .form-control:focus {
            box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
        }

        .form-icon {
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
            color: #6c757d;
        }

        .input-group > .form-control {
            padding-left: 2.3rem;
        }

        .btn i {
            margin-right: 6px;
        }
    </style>
</head>
<body>

<div class="card">
    <h3 class="text-center mb-4"><i class="fas fa-plus-circle me-2"></i>Create New Task</h3>
    <form action="save" method="post">
        <div class="mb-3 position-relative">
            <label class="form-label">Title</label>
            <div class="input-group">
                <span class="form-icon"><i class="fas fa-heading"></i></span>
                <input type="text" name="title" class="form-control" required />
            </div>
        </div>

        <div class="mb-3 position-relative">
            <label class="form-label">Description</label>
            <div class="input-group">
                <span class="form-icon"><i class="fas fa-align-left"></i></span>
                <textarea name="description" class="form-control" rows="3"></textarea>
            </div>
        </div>

        <div class="mb-4 position-relative">
            <label class="form-label">Status</label>
            <div class="input-group">
                <span class="form-icon"><i class="fas fa-tasks"></i></span>
                <select name="status" class="form-control">
                    <option value="PENDING">Pending</option>
                    <option value="DONE">Done</option>
                </select>
            </div>
        </div>

        <div class="d-flex justify-content-between">
            <a href="/" class="btn btn-outline-secondary">
                <i class="fas fa-arrow-left"></i>Cancel
            </a>
            <button type="submit" class="btn btn-success">
                <i class="fas fa-save"></i>Save Task
            </button>
        </div>
    </form>
</div>

</body>
</html>
