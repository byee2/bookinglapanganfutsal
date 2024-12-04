<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>
<style>
    .dropdown:hover .dropdown-menu {
      display: block;
    }
    .bg{
      height: 50vh;
      background-image: url("img/bg.jpeg");
      background-size: cover;
    }
    </style>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <!-- Logo di kiri -->
          <a class="navbar-brand text-primary" href="#">
            <i class="fas fa-futbol"></i>
            Booking futsal
          </a>
          
          <!-- Tombol login di kanan -->
          <div class="ms-auto">
            <div class="dropdown">
              <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                Login
              </button>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <li><a class="dropdown-item" href="login_admin.php">Login Admin</a></li>
                <li><a class="dropdown-item" href="login_user.php">Login User</a></li>
              </ul>
            </div>
          </div>
        </div>
      </nav>

        <div class="container-fluid">
          <div class="bg"></div>
            <div class="row align-items-start pt-3">
                <div class="col-7">
                 <h1>Tentang kami</h1>
                 <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Odit voluptatibus pariatur quas sed fuga natus, eligendi necessitatibus. Ut cum exercitationem consequuntur expedita laborum! Ipsa neque sapiente, magni aut voluptatem nesciunt!
                  Lorem ipsum dolor sit amet consectetur, adipisicing elit. Distinctio iste quos dignissimos hic cum culpa, natus ea architecto laudantium ad neque nihil et aliquam harum sed provident cupiditate delectus velit?
                 </p>
                 <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Non suscipit quibusdam sint voluptatibus. Maiores commodi aliquam adipisci dolore rerum facilis debitis? Consequatur totam nemo rerum dolore quidem reiciendis error modi!</p>
                </div>
                <div class="col-5">
                 <p>kebersihan</p>
                 <div class="progress">
                    <div class="progress-bar w-100" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <p>Kenyamanan</p>
                  <div class="progress">
                     <div class="progress-bar w-100" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                   </div>
                   <p>Keamanan</p>
                   <div class="progress">
                      <div class="progress-bar w-100" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
              </div>

              <div style="height: 80vh;background-color: #eaeaea;" class="container-fluid d-flex justify-content-center align-items-center">
                <div class="container-fluid d-flex justify-content-center align-items-center">
                    <div class="card" style="width: 100rem;">
                        <div class="card-body ">
                          <h5 class="card-title text-center">Daftar Akun Booking Futsal</h5>
                            <div class="container">
                                <div class="row">
                                    <div class="col-4">
                                        <div class="card text-center">
                                            <img src="img/futboljpg"  height="500px">
                                          </div>
                                    </div>
                                     <div class="col-8">
                                        <form>
                                            <div class="mb-3">
                                              <label for="nama" class="form-label">Nama</label>
                                              <input type="text" class="form-control" id="nama" aria-describedby="emailHelp">
                                            </div>
                                            <div class="mb-3">
                                                <label for="subject" class="form-label">klub</label>
                                                <input type="text" class="form-control" id="nama" aria-describedby="emailHelp">
                                              </div>
                                              <div class="mb-3">
                                                <label for="subject" class="form-label">Alamat</label>
                                                <input type="text" class="form-control" id="alamat" aria-describedby="emailHelp">
                                              </div>
                                              <div class="mb-3">
                                                <label for="subject" class="form-label">no telfon</label>
                                                <input type="text" class="form-control" id="notelpon" aria-describedby="emailHelp">
                                              </div>
                                              <div class="mb-3">
                                                <label for="subject" class="form-label">no KTP</label>
                                                <input type="text" class="form-control" id="noktp" aria-describedby="emailHelp">
                                              </div>
                                              <div class="mb-3">
                                                <label for="subject" class="form-label">password</label>
                                                <input type="password" class="form-control" id="password" aria-describedby="emailHelp">
                                              </div>
                                            
                                            <button type="submit" class="btn btn-primary form-control">Daftar</button>
                                          </form>
                                    </div>
                                </div>
                            </div>
                        </div>     
                    </div>
                    
                </div>
                </div>
            </body>
        </div>
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright &copy; Your Website 2021</span>
                </div>
            </div>
        </footer>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>