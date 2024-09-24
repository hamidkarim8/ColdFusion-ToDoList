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

    <!---update--->
    <cffunction name="updateTasks" returntype="void">
        <cfargument name="form" type="struct" required="true">
        <cftry>
            <cfquery name="editTasks" returntype="query" datasource="CFToDoList">
                UPDATE tasks 
                SET 
                    name = <cfqueryparam value="#arguments.form.name#" cfsqltype="cf_sql_varchar">
                WHERE id = <cfqueryparam value="#arguments.form.id#" cfsqltype="cf_sql_integer">
            </cfquery>
            
            <cflocation url="./index.cfm" addToken="no">
        <cfcatch>
            <cfoutput>Error: #cfcatch.message#</cfoutput>
        </cfcatch>
    </cftry>
    </cffunction>

    <!---insert--->
    <cffunction name="insertTasks" returntype="void">
        <cfargument name="form" type="struct" required="true">
        <cftry>
            <cfquery name="addTasks" returntype="query" datasource="CFToDoList">
                insert into tasks 
                (name)
                values
                (
                    <cfqueryparam value="#arguments.form.name#" cfsqltype="cf_sql_varchar">
                )
            </cfquery>
            
            <cflocation url="./index.cfm" addToken="no">
        <cfcatch>
            <cfoutput>Error: #cfcatch.message#</cfoutput>
        </cfcatch>
    </cftry>
    </cffunction>

    <!---delete--->
    <cffunction name="deleteTasks" returntype="void">
        <cfargument name="id" type="numeric" required="true">
        <cftry>
            <cfquery name="removeTasks" returntype="query" datasource="CFToDoList">
                DELETE FROM tasks 
                WHERE id = <cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_integer">
            </cfquery>
    
            <cflocation url="./index.cfm" addToken="no">
        <cfcatch>
            <cfoutput>Error: #cfcatch.message#</cfoutput>
        </cfcatch>
    </cftry>
    </cffunction>

    <!---read name--->
    <cffunction name="retrieveName">
        <cfargument name="id" type="string" required="true">
        <cftry>
            <cfquery name="getName" returntype="query" datasource="CFToDoList">
                select id,name
                from tasks
                where id = <cfqueryparam value = "#arguments.id#" CFSQLType = "cf_sql_integer">
            </cfquery>
                        
            <cfreturn getName>
            <cfcatch>
                <cfoutput>Error: #cfcatch.message#</cfoutput>
                <cfreturn "" />
            </cfcatch>
        </cftry>
    </cffunction>    
    

</cfcomponent>
