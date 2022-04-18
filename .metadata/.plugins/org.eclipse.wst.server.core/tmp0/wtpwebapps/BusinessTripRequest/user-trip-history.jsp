<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Trip History</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="css/sidebar-style.css">
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
        integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"
        crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
        integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY"
        crossorigin="anonymous"></script>

</head>

<body>

    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div id="dismiss">
                <i class="fas fa-arrow-left"></i>
            </div>

            <div class="sidebar-header">
                <h3>Welcome</h3>
            </div>

            <ul class="list-unstyled components">
                <p>Trilok Sharma</p>
                
                    <!-- <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">Home</a>
                      <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li>
                            <a href="#">Home 1</a>
                        </li>
                        <li>
                            <a href="#">Home 2</a>
                        </li>
                        <li>
                            <a href="#">Home 3</a>
                        </li> 
                    </ul>-->
                <li>    
                	<a href="user-personal-detail.jsp">Personal Details</a>
                </li>
                <li>
                    <a href="user-new-trip.jsp">New Trip Request</a>
                </li>
                <li>
                    <a href="user-pending-request.jsp">Pending Request</a>
                </li>
                <li>
                    <a href="user-approved-request.jsp">Approved Request</a>
                </li>
                <li class="active">
                    <a href="user-trip-history.jsp">Trip History</a>
                </li>
                <li>
                    <a href="index.jsp">Logout</a>
                </li>
            </ul>

            
        </nav>

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar bg-light text-white" style="background: linear-gradient(to right, #754edd, #e2114f);">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fa fa-bars"></i>
                        <span>Dashboard</span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">
                                <h3 class="nav-link">Trip History</h3>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            
           

            <div class="line"></div>

           <!--   <h3>All Previous trips</h3>-->
           
           <div class="table-wrapper-scroll-y my-custom-scrollbar"">
  <div class="card gradient">
    
  <div class="row">
    <div class="col-md-12 col-xl-12 col-lg-12">
      <table class="table table-bordered table-striped table-hover table-resposive">

        <thead class="table-dark gradient text-nowrap">

          <tr>

            <th>Trip ID</th>
            <th>Depart_Date</th>
            <th>Return_Date</th>
            <th>Depart_Country</th>
            <th>Desti_Country</th>
            <th>Postal Code</th>
            <th>Currency</th>
            <th>Est_Cost</th>
            <th>Adv_Amount</th>
            <th>Accomodation</th>


          </tr>

        </thead>

        <tbody class="text-center">

        
          <tr>

            <th scope="row"></th>
            <td>1</td>
            <td>12-01-2021</td>
            <td>12-01-2021</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        

        </tbody>

      </table>
        </div>
    </div>

 

    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
    <!-- jQuery Custom Scroller CDN -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#sidebar").mCustomScrollbar({
                theme: "minimal"
            });

            $('#dismiss, .overlay').on('click', function () {
                $('#sidebar').removeClass('active');
                $('.overlay').removeClass('active');
            });

            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').addClass('active');
                $('.overlay').addClass('active');
                $('.collapse.in').toggleClass('in');
                $('a[aria-expanded=true]').attr('aria-expanded', 'false');
            });
        });
    </script>
</body>

</html>