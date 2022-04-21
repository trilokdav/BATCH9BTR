<%@ page language="java" import="java.sql.ResultSet" import="java.sql.Statement" import="java.sql.Connection" import="java.sql.DriverManager" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Admin Dashboard</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="../css/sidebar-style.css">
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
                <p><%=session.getAttribute("fname")%> <%=session.getAttribute("lname")%></p>
                
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
                    <a class="active" href="admin-new-trip.jsp">New Trip Request</a>
                </li>
                <li>
                    <a href="admin-pending-request.jsp">Pending Request</a>
                </li>
                <li>
                    <a href="admin-approved-request.jsp">All Approved Request</a>
                </li>
                <li>
                    <a href="all-employee.jsp">All Employees</a>
                </li>
                <li>
                    <a href="../index.jsp">Logout</a>
                </li>
            </ul>


        </nav>

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar bg-light text-white"
                style="background: linear-gradient(to right, #754edd, #e2114f);">
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
                                <h3 class="nav-link">New Trip Request</h3>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <h3>Create new trip request</h3>
           	<hr/>

            <form>
			 <div class="card shadow  mb-5  rounded m-4" style="background:linen;">
             <div class="card-body">
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-3 col-sm-12 text-center">
                            <label for="purpose">Travel Purpose</label>
                        </div>
        
                        <%
						    try{
						         Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
						         Connection conn =DriverManager.getConnection("jdbc:oracle:thin:@132.145.42.131:1521/Testdb_pdb1.evopaassub1.evopaasvcn.oraclevcn.com","trainee_schema","Trn__Schema_21");
									String query="SELECT * FROM BATCH9BTR_TRAVEL_PURPOSE";
						         Statement st = conn.createStatement() ;
						        ResultSet rs =st.executeQuery(query) ;
						%>
                        <div class="col-md-3 col-sm-12">
                            <select name="purpose" id="purpose" class="form-control border border-primary">
                                <!-- <option value="#">-- Select --</option>
                                <option value="Project2">project 2</option>
                                <option value="Project3">project 3</option>
                                <option value="Project4">project 4</option> -->
                                <%  while(rs.next()){ %>
            					<option><%= rs.getString(2)%></option>
       							 <% 
       							 } 
       							 %>
                            </select>
                            <%
							  }
							catch(Exception e){}
						%>
                        </div>

                        <div class="col-md-3 col-sm-12 text-center">
                            <label for="dcountry">Departing country</label>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <input type="text" name="dcountry" class="form-control border border-primary" id="dcountry">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="row">
                        <div class="col-md-3 col-sm-12 text-center">
                            <label for="ddate">Departure date</label>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <input type="date" name="ddate" class="form-control border border-primary" id="ddate">
                        </div>

                        <div class="col-md-3 col-sm-12 text-center">
                            <label for="rdate">Return date</label>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <input type="date" name="rdate" class="form-control border border-primary" id="rdate">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="row">
                        <div class="col-md-3 col-sm-12 text-center">
                            <label for="ecost">Estimated cost</label>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <input type="number" name="ecost" class="form-control border border-primary" id="ecost">
                        </div>

                        <div class="col-md-3 col-sm-12 text-center">
                            <label for="advance">Advance amount</label>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <input type="number" name="advance" class="form-control border border-primary" id="advance">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="row">
                        <div class="col-md-3 col-sm-12 text-center">
                            <label for="d_addr">Destination address</label>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <input type="text" name="d_addr" class="form-control border border-primary" id="d_addr"
                                placeholder="Address line 1, Street name">
                        </div>

                        <div class="col-md-3 col-sm-12 text-center">
                            <label for="dcity">Destination City</label>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <input type="text" name="dcity" class="form-control border border-primary" id="dcity">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="row">
                        <div class="col-md-3 col-sm-12 text-center">
                            <label for="dcountry">Destination Country</label>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <input type="text" name="dcountry" class="form-control border border-primary" id="dcountry">
                        </div>

                        <div class="col-md-3 col-sm-12 text-center">
                            <label for="postal">Postal code</label>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <input type="text" name="postal" class="form-control border border-primary" id="postal">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="row">
                        <div class="col-md-3 col-sm-12 text-center">
                            <label for="accomodation">Acomodation required?</label>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <select name="accomodation" id="Accomodation" class="form-control border border-primary">
                                <option value="no">No</option>
                                <option value="yes">Yes</option>
                            </select>
                        </div>

                        <div class="col-md-3 col-sm-12 text-center">
                            <label for="currency">Currency</label>
                        </div>
                        <div class="col-md-3 col-sm-12">
                            <input type="text" name="currency" class="form-control border border-primary" id="currency">
                        </div>
                    </div>
                </div>

                <br />
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xl-6 text-right">
                        <button type="submit" class="btn btn-success">Submit</button>
                    </div>

                    <div class="col-md-6 col-sm-6 col-xl-6 text-left">
                        <button type="reset" class="btn btn-danger">Reset</button>
                    </div>
                </div>

				</div>
				</div>
            </form>

            <!-- <div class="form-group">
                <div class="row">
                    <div class="col-md-3 col-sm-12 text-center">
                        <label for="dcountry">Destination Country</label>
                    </div>
                    <div class="col-md-3 col-sm-12">
                        <input type="text" name="dcountry" class="form-control border border-primary" id="dcountry">
                    </div>

                    <div class="col-md-3 col-sm-12 text-center">
                        <label for="postal">Postal code</label>
                    </div>
                    <div class="col-md-3 col-sm-12">
                        <input type="text" name="postal" class="form-control border border-primary" id="pstal">
                    </div>
                </div>
            </div> -->

        </div>
    </div>

    <div class="overlay"></div>

    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
        integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
        crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
        integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
        crossorigin="anonymous"></script>
    <!-- jQuery Custom Scroller CDN -->
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>

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