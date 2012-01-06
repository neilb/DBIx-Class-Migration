package Local::SchemaV2::Result::Track;
use base qw/DBIx::Class::Core/;

__PACKAGE__->table('track');
__PACKAGE__->add_columns(
  'trackid' => {
    data_type => 'integer',
  },
  'cd' => {
    data_type => 'integer',
  },
  'title' => {
    data_type => 'varchar',
    size => '96',
  });

__PACKAGE__->set_primary_key('trackid');
__PACKAGE__->belongs_to('cd' => 'Local::SchemaV2::Result::Cd');
 
1;