
<cfcomponent displayname="tasks" hint="Actions for tasks">
            
    <!---read--->
    <cffunction name="retrieveTasks">
        <cftry>
            <cfquery name="getTasks" returntype="query" datasource="CFToDoList">
                SELECT * FROM tasks
            </cfquery>
            
            <!---<cfdump var="#getTasks#" label="Tasks Retrieved" display="true">--->
            
            <cfreturn getTasks>
            <cfcatch>
                <cfoutput>Error: #cfcatch.message#</cfoutput>
                <cfreturn "" />
            </cfcatch>
        </cftry>
    </cffunction>

</cfcomponent>
