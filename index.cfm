<cfinclude template="./includes/header.cfm">

<div class="container-fluid form-container text-center">
  <!-- Improved Form Design -->
  <form action="insert.cfm" method="post">
    <input type="text" name="name" id="name" placeholder="Enter a new task...">
    <input type="submit" value="Add Task" class="btn btn-sm btn-secondary">
  </form>
</div>

<!-- Task Cards Section -->
<div class="container-fluid mt-5">
  <cfinclude template="./queries/tasks.cfm">
  
  <cfoutput>Number of tasks: #tasks.recordCount#</cfoutput>

  <div class="row mt-4">
    <!-- Loop through tasks -->
    <cfoutput query="tasks">
      <!-- Each task as a card -->
      <div class="col-md-4 mb-3">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">#tasks.NAME#</h5>
            <!-- Edit and Delete buttons -->
            <a href="edit.cfm?id=#URLEncodedFormat(tasks.id)#" class="btn btn-sm btn-secondary">Edit</a>
            <a href="delete.cfm?id=#URLEncodedFormat(tasks.id)#" class="btn btn-sm btn-danger">Delete</a>
          </div>
        </div>
      </div>
    </cfoutput>
  </div>
</div>

<cfinclude template="./includes/footer.cfm">
