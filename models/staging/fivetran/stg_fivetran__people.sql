select
    _file,
    _modified,
    user_id,
    email,
    sex,
    job_title,
    phone,
    first_name,
    last_name,
    date_of_birth
from {{ source('fivetran', 'people') }}