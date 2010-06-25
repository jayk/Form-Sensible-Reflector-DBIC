package TestSchema::Result::Test;
use base qw/DBIx::Class/;
use DateTime;

__PACKAGE__->load_components(qw/ Core  /);
__PACKAGE__->table('user');
__PACKAGE__->add_columns(
    'username',
    {
        data_type   => 'varchar',
        size        => '40',
        is_nullable => 0,

    },
	'file_upload',
	{
		data_type   => 'blob',
		is_nullable => 0,
	},
	'date',
	{
		data_type   => 'datetime',
		is_nullable => 0,
		default_form_value => DateTime->now,
	},
	'big_text',
	{
		data_type   => 'text',
		is_nullable =>0,
		size        => '4096',
	},
	'number',
	{
		data_type   => 'int',
		is_nullable => 0,
	},
	'decimal',
	{
		data_type   => 'decimal',
		is_nullable => 0,
	},
	'big_number',
	{
		data_type   => 'bigint',
		is_nullabel => 0,
	},
    'password',
    {
        data_type   => 'varchar',
        size        => '40',
        is_nullable => 0,
        validation => { render_hints => { field_type => 'password' }}, 
    },
);

1;
