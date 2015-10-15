<%-- 
    Document   : top
    Created on : Oct 7, 2015, 3:35:03 PM
    Author     : Pkung
--%>

<nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a  class="navbar-brand" href="Home.jsp">The Cake Manager 

        </a>
    </div>

    <div class="notifications-wrapper">
        <ul class="nav">

            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-tasks">
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 1</strong>
                                    <span class="pull-right text-muted">60% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                        <span class="sr-only">60% Complete (danger)</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>

                </ul>
            </li>

            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user-plus"></i>  <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="DetailAcc.jsp"><i class="fa fa-user-plus"></i> My Profile</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="Administrator.jsp?ac=logout"><i class="fa fa-sign-out"></i> Logout</a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</nav>
