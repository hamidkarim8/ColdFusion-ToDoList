<cfinclude template="./includes/header.cfm">

<div class="container-fluid form-container text-center">
  <form action="insert.cfm" method="post">
    <input type="text" name="name" id="name" placeholder="Enter a new task...">
    <input type="submit" value="Add Task" class="btn btn-sm btn-secondary">
  </form>
</div>

<div class="container-fluid mt-5">
  <cfinvoke component="components.tasks"
    method="retrieveTasks"
    returnvariable="allTasks">
  </cfinvoke>

  <cfoutput>Total: #allTasks.recordCount#</cfoutput>

  <cfif allTasks.recordCount EQ 0>
      <cfoutput>No tasks found.</cfoutput>
  </cfif>

  <div class="row mt-4">
    <cfoutput query="allTasks">
      <div class="col-md-4 mb-3">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">#NAME#</h5>
            <a href="edit.cfm?id=#URLEncodedFormat(id)#" class="btn btn-sm btn-secondary">Edit</a>
            <a href="delete.cfm?id=#URLEncodedFormat(id)#" class="btn btn-sm btn-danger">Delete</a>
          </div>
        </div>
      </div>
    </cfoutput>
  </div>
</div>

<cfinclude template="./includes/footer.cfm">
