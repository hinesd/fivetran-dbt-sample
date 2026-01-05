select
    _file,
    _modified,
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
from {{ get_latest_file_data('fivetran', 'customer') }}