package SVG::Timeline::Event;

use 5.010;

use Moose;
use Moose::Util::TypeConstraints;

coerce __PACKAGE__,
  from 'HashRef',
  via  { __PACKAGE__->new($_) };

has text => (
  is => 'ro',
  isa => 'Str',
  required => 1,
);

has start => (
  is => 'ro',
  isa => 'Int',
  required => 1,
);

has end => (
  is => 'ro',
  isa => 'Int',
  required => 1,
);

has colour => (
  is => 'ro',
  isa => 'Maybe[Str]',
  required => 0,
);

1;