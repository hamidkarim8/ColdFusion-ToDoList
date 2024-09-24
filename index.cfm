<cfinclude template="./includes/header.cfm">

<div class="container-fluid">
  <div class="text-center my-4">
    <form action="insert.cfm" method="post">
      <input type="text" name="name" id="name">
      <input type="submit" value="Add" class="btn btn-sm btn-secondary">
    </form>
  </div>
</div>

<!-- Task Cards -->
<div class="container-fluid">
  <cfinclude template="./queries/tasks.cfm">
  
  <!-- Debugging output to check record count -->
  <cfoutput>Number of tasks: #tasks.recordCount#</cfoutput>

  <div class="row">
    <!-- Make sure cfoutput is wrapped around the loop correctly -->
    <cfoutput query="tasks">
      <!-- Create a card for each task -->
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
