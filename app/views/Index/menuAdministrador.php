<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block sidebar-light-theme sidebar collapse">
<div class="position-sticky">
<ul class="nav flex-column">
    <li class = "nav-item bg-warning border border-top-warning">
        
            <a class = "nav-link bg-light text-dark text-center" href = "#">
                <span class = "bi-person-circle text-center" style = "margin-left:20px;"></span>
                </br>
                Operador
                </br> 
                <?php echo $_SESSION['user'];?>.
            </a>
            </li>
            <li class="nav-item">
                <a class="nav-link  rounded-0" aria-current="page" href="#" id="enlace2">
                    <span class="bi-diagram-3"></span>
                    Estructuras
                </a>
                <ul class="nav flex-column text-start  bg-secondary" id="submenu2">
                    <li class="nav-item">
                        <a class = "nav-link  text-white rounded-0 <?php __Active($equipos);?>" href="<?php __Option($equipos,1);?>">
                            <span class="bi-box"></span>&nbsp;&nbsp; CLAP&nbsp;&nbsp;
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class = "nav-link  text-white rounded-0 <?php __Active($equipos);?>" href="<?php __Option($equipos,0);?>">
                            <span class="bi-person-bounding-box"></span>&nbsp;&nbsp; Socios Alimentarios&nbsp;&nbsp;
                        </a>
                    </li>
                </ul>
            </li>


             <li class="nav-item">
                <a class="nav-link  rounded-0" aria-current="page" href="#" id="enlace5">
                    <span class="bi-gear-fill"></span>
                    Configuracion
                </a>
                <ul class="nav flex-column text-start  bg-secondary" id="submenu5">
                    <li class="nav-item">
                        <a class = "nav-link  text-white rounded-0 <?php __Active($Cfg);?>" href="<?php __Option($Cfg,0);?>">
                            <span class="bi-person-bounding-box"></span>&nbsp;&nbsp; Usuarios&nbsp;&nbsp;
                        </a>
                    </li>
                </ul>
            </li>

        </ul>
    </div>
</nav>