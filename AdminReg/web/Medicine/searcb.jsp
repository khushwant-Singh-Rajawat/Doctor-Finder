<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medilab</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
        }
        .container {
            padding: 4rem 0;
        }
        .section-title {
            text-align: center;
            margin-bottom: 3rem;
        }
        .section-title h2 {
            font-size: 2.5rem;
            font-weight: 600;
            color: #333;
        }
        .section-title p {
            font-size: 1.2rem;
            color: #555;
        }
        .search-form {
            background-color: #fff;
            padding: 3rem;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .search-form input {
            width: 100%;
            padding: 1rem;
            border: 1px solid #ced4da;
            border-radius: 5px;
            margin-bottom: 1rem;
        }
        .search-form select {
            width: 100%;
            padding: 1rem;
            border: 1px solid #ced4da;
            border-radius: 5px;
            margin-bottom: 2rem;
        }
        .search-form button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 1rem 2rem;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .search-form button:hover {
            background-color: #0056b3;
        }
        .search-form .form-group {
            margin-bottom: 1.5rem;
        }
        @media (max-width: 768px) {
            .search-form {
                padding: 2rem;
            }
            .search-form input, .search-form select {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-title">
                    <h2>Find Your Doctor, Hospital, and Medicine</h2>
                    <p>Search for the best healthcare providers and services near you.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="search-form">
                    <h3>Find Your Doctor</h3>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Doctor Name">
                    </div>
                    <div class="form-group">
                        <select class="form-control">
                            <option value="">Select Speciality</option>
                            <option value="Cardiologist">Cardiologist</option>
                            <option value="Dermatologist">Dermatologist</option>
                            <option value="Endocrinologist">Endocrinologist</option>
                            <option value="Gastroenterologist">Gastroenterologist</option>
                            <option value="Neurologist">Neurologist</option>
                            <option value="Ophthalmologist">Ophthalmologist</option>
                            <option value="Pediatrician">Pediatrician</option>
                        </select>
                    </div>
                    <button type="button" class="btn btn-primary">Search</button>
                </div>
            </div>
            <div class="col-md-4">
                <div class="search-form">
                    <h3>Find Hospital</h3>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Hospital Name">
                    </div>
                    <button type="button" class="btn btn-primary">Search</button>
                </div>
            </div>
            <div class="col-md-4">
                <div class="search-form">
                    <h3>Find Medicine</h3>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Medicine Name">
                    </div>
                    <button type="button" class="btn btn-primary">Search</button>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>