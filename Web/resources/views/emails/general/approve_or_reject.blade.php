<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lawyer Consultation Portal</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Lawyer Consultation Portal</div>

                    <div class="card-body">
                        <h3>Lawyer Approved Successfully</h3>

                        <h5 class="card-title">Lawyer ID: <strong>{{ $lawyer->id }}</strong></h5>

                        <p class="card-text">Lawyer Name:
                            <strong>{{ $lawyer->first_name ." ". $lawyer->last_name }}</strong>
                        </p>
                        <p class="card-text"> Lawyer Experience: <strong>{{ $lawyer->experience }}</strong></p>

                        <p class="card-text">Lawyer Address: <strong>{{ $lawyer->address_line_1 }}</strong></p>

                        <p class="card-text">Lawyer Phone: <strong>{{ $lawyer->cell_phone }}</strong></p>
                        <a href="{{ url('/lawyers/profiles/' . $lawyer->id) }}"
                            class="btn btn-primary text-white">Visit Your Profile</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>

</body>

</html>
