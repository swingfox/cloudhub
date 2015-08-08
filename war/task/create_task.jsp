<!--
/* Partial UI done. With homepage, view tasks page,
* Add task page and search task page.
* @author Janna Tapitha S. Pedrano
* @version 0.01
* @as of July 7, 2015 1:45AM
*/
  0.0.1 - [08/09/15] - David Ramirez - Error Blank Field Warning
-->

<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
  <title>Welcome to CloudHub!</title>

  <!-- CSS  -->
  <!-- 0.0.1 start mod -->
  <link rel="stylesheet" href="../css/base.css" type="text/css" media="screen,projection"/>
  <!-- 0.0.1 end mod -->
  <link href="../css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="../css/materialize_content.css" type="text/css" rel="stylesheet" media="screen,projection"/>

</head>

<body>
<header>
<ul id="nav-mobile" class="side-nav fixed" style="left: 0px;">
    <li class="logo">
      <img src="../images/avatar.png" class="responsive-img">
      <p><h4 class="header_name">Hey, Riri!</h4></p>
    </li>

    <li class="bold"><a href="../task/" class="waves-effect waves-teal">Masterlist</a></li>
    <li class="bold"><a href="../taskstoday/" class="waves-effect waves-teal">Today's Tasks</a></li>
    <li class="active"><a href="addTask" class="waves-effect waves-teal">Create Task</a></li>
    <li class="bold"><a href="searchTask" class="waves-effect waves-teal">Search Task</a></li>
    <li class="bold"><a href="../" class="waves-effect waves-teal">Log Out </a></li>
</ul>
</header>

<main>
<div class="container">
  <div class="row">
    <div class="col s12 m9 l10">
      <div id="right" class="section scrollspy">
        <h2 class="header"><img src="../images/add.jpg" width="5%">&nbsp;&nbsp;Create Task</h2>
        <p class="caption">Complete all needed information to add task.
          <div class="row">
            <form class="col s12" method="post" action="addTask">
              <div class="row">
              <!-- 0.0.1 mod start -->
                <div class="input-field col s6">
                <!-- 0.0.1 end start -->
                  <input id="task_name" name="name" type="text" class="validate text_default">
                  <label for="task_name">Task Name</label>
                </div>
              </div>

              <div class="row">
                <div class="col s6">
                  <select class="browser-default" name="phase">
                    <option value="" disabled selected>Choose Phase</option>
                    <option value="1" name="testing">Testing</option>
                    <option value="2" name="coding">Coding</option>
                    <option value="3" name="design">Design</option>
                  </select>
                </div>
              </div>

              <div class="row">
                <div class="input-field col s6">
                  <input id="estimated_time" name="estHours" type="text" class="validate">
                  <label for="estimated_time">Estimated Time Allotment</label>
                </div>
              </div>

              <div class="row">
                <div class="input-field col s6">
                  <input id="start_date" name="startDate" type="date" class="datepicker picker__input">
                <label for="start_date"></label>
                </div>
              </div>

              <div class="row">
                <div class="input-field col s6">
                  <input id="due_date" name="dueDate" type="date" class="datepicker picker__input">
                 <label for="due_date"></label>
                </div>
              </div>

               <!-- <a class="waves-effect waves-light btn"><i class="material-icons left">note_add</i>Create Task</a> -->
             <button class="waves-effect waves-light btn button_default button_action" type="submit"  value="create_task" name="createTask"><i class="material-icons left">note_add</i>Create Task</button>
              &nbsp;&nbsp;&nbsp;
              <a class="waves-effect waves-light btn" name="clearField"><i class="material-icons left">clear_all</i>Clear Fields</a>
            </form>
          </div>
        </p>
        <br>
  </div>
</div>
</main>

  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="../../bin/materialize.js"></script>
  <script src="../js/init.js"></script>

  <!-- 0.0.1 start mod -->
  <script src="../jquery/jquery-1.8.2.js"></script>
  <script src="../jquery/jquery.ui.effect.js"></script>
  <!--
  <script>
    $(function() {
          $('button').on('click', function() {
                if ('create_task' == $(this).val()) {
                  for (var i = 0; i < $('input.validate').length; i++) {
                    if ("" == $('input.validate').eq(i).val()) {
                      $('input.validate').eq(i).addClass('text_error');
                    } else {
                      $('input.validate').eq(i).removeClass('text_error');
                    }
                  }
                  
                  for (var i = 0; i < $('.textarea_default').length; i++) {
                    if ("" == $('.textarea_default').eq(i).val()) {
                      $('.textarea_default').eq(i).addClass('text_error');
                    } else {
                      $('.textarea_default').eq(i).removeClass('text_error');
                    }
                  }
                } else if ('Cancel' == $(this).val()) {
                  $('.text_default').val('').removeClass('text_error');
                  $('.textarea_default').val('').removeClass('text_error');
                }
                
                if ($(this).hasClass('button_action')) {  
                  $(this).closest('.wrapper').toggleClass('wrapper_action', 200).toggleClass('wrapper_action', 200);
                } else if( $(this).hasClass('button_danger')) {
                  $(this).closest('.wrapper').toggleClass('wrapper_danger', 200).toggleClass('wrapper_danger', 200);
                }
                return false;
              });
      });
  </script>
  -->
  <!-- 0.0.1 end mod -->
  </body>
  </html>

