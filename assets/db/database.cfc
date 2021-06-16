<cfcomponent>
    <cffunction name="selectPriceRangeFunction" access="public" returntype="query">
        <cfset var priceRange = ''>
        <cfquery name="priceRange" datasource="demoSource">
            SELECT * FROM priceRange
        </cfquery>
        <cfreturn priceRange>
    </cffunction>

    <cffunction name="filterPriceRangeFunction" access="remote" returnformat="JSON">
        <cfargument name="priceRange" type="numeric" required="true">
        <cfset var filterRange = ''>
        <cfquery name="filterRange" datasource="demoSource">
            SELECT * FROM priceRange where price < <cfqueryparam value="#arguments.priceRange#" cfsqltype="integer">
        </cfquery>
        <cfreturn filterRange>
        <cfdump var="#filterRange#">
    </cffunction>
</cfcomponent>