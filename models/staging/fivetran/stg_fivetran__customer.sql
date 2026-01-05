select
    _file,
    customer_id,
    company,
    email,
    phone_1,
    phone_2,
    first_name,
    last_name,
    website,
    city,
    country
from {{ source('fivetran', 'customer') }}