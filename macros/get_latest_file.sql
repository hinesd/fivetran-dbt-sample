{% macro get_latest_file_data(source_name, table_name) %}
   ( 
    with latest_file as (
        select _file, _modified
        from {{ source(source_name, table_name) }}
        order by _modified desc
        limit 1
    )
    
    select t.*
    from {{ source(source_name, table_name) }} as t
    inner join latest_file lf
        on t._file = lf._file
        and t._modified = lf._modified
   )
{% endmacro %}