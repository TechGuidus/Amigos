<nav class=" navbar navbar-light bg-danger">
    <div class="container position-relative">
        <ul class=" flex-row navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="home">Home</a>
            </li>
            <li class=" position-relative mx-4 nav-item dropdown drop-down-seasons ">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Seasons
                </a>
                <div class=" position-absolute dropdown-menu bg-danger" aria-labelledby="navbarDropdown">

                    {foreach from=$seasons item=season}
                        <a class="dropdown-item" href="season/{$season->season}">Season {$season->season}</a>
                    {/foreach}

                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="season/all">Todos Los capitulos</a>
            </li>
            
            {if $logged eq true && $admin eq true}
                <li class=" position-relative ml-4 nav-item dropdown drop-down-seasons ">
                    <a class="nav-link dropdown-toggle" href="#" id="admin-deck" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Admin
                    </a>
                    <div class=" position-absolute dropdown-menu bg-danger active" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="upload modo">Agregar capitulo</a>
                        <a class="dropdown-item" href="upload season modo">Agregar season</a>
                        <a class="dropdown-item" href="seasons">Editar seasons</a>
                        <a class="dropdown-item" href="user_administration">Usuarios</a>
                    </div>
                </li>
                {/if}
            {if $logged eq false}
                <li class="nav-item active ml-4">
                    <a class="nav-link " href="login">Login or Register</a>
                </li>
            {else}
                <li class="nav-item active ml-4">
                    <a class="nav-link" href="logout">Logout</a>
            {/if}
        </ul>
        
    </div>
</nav>