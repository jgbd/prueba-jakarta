<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Formulario de cambio de color de textos</title>
    <style>
        body {
            background-color: ${cookie.backColor.getValue()};
            color: ${cookie.textColor.getValue()};
        }
        h3, p {
            text-align: center;
        }
        /* Cambiar estilos de los formularios */
        form {
            width: 300px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="color"] {
            width: 100%;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .form-actions {
            display: flex;
            justify-content: center;
        }
        /* Cambiar estilos de los grupos de formulario */
        .form-group {
            margin-bottom: 10px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 10px;
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
         }
    </style>
</head>
<body>
    <h3> Bienvenido a la página web</h3>
    <p> Esta página web utiliza cookies para almacenar el color de texto seleccionado.</p>
    <!-- Cambiar color de textos usando cookies -->
    <form action="/webapp-cookie-tarea4/cambiar-color" method="get">
        <div class="form-group" >
            <label for="textColor">Seleccione un nuevo color de texto</label>
            <input type="color" name="textColor" id="textColor"  value="${cookie['textColor'] != null ? cookie['textColor'].value : '#000000'}">
        </div>
        <div class="form-group"  >
            <label for="backColor"> Seleccione un color de fondo</label>
            <input type="color" name="backColor" id="backColor" value="${cookie['backColor'] != null ? cookie['backColor'].value : '#FFFFFF'}">

        </div>
        <div class="form-actions">
            <input type="submit" value="Cambiar color">
        </div>
    </form>
</html>
</body>
</html>