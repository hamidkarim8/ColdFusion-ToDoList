<cfset request.pageTitle = "Edit">
<cfinclude template = "./includes/header.cfm">

<cfinvoke component="components.tasks"
method="retrieveName"
returnvariable="task">
<cfinvokeargument name="id" value="#url.id#">
</cfinvoke>

<div class="container-fluid">
  <div class="text-center mt-5">
      <form action="update.cfm" method="post">
          <cfif task.recordcount GT 0>
              <cfoutput query="task">
                  <input type="hidden" name="id" id="id" value="#task.id#">
                  <input type="text" name="name" id="name" value="#task.name#">
                  <input type="submit" value="Update" class="btn btn-sm btn-secondary">
              </cfoutput>
          <cfelse>
              <p>No task found.</p>
          </cfif>
      </form>
  </div>
</div>
<cfinclude template = "./includes/footer.cfm">
