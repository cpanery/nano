use 5.014;

use strict;
use warnings;
use routines;

use Test::Auto;
use Test::More;

=name

Nano::Types

=cut

=tagline

Type Library

=abstract

Type Library

=cut

=synopsis

  package main;

  use Nano::Types;

  1;

=cut

=libraries

Types::Standard

=cut

=description

This package provides type constraints for the L<Nano> object persistence
framework.

=cut

=type Changes

  Changes

=type-library Changes

Nano::Types

=type-composite Changes

  InstanceOf["Nano::Changes"]

=type-parent Changes

  Object

=type-example-1 Changes

  # given: synopsis

  use Nano::Changes;

  my $changes = Nano::Changes->new;

=cut

=type Domain

  Domain

=type-library Domain

Nano::Types

=type-composite Domain

  InstanceOf["Zing::Domain"]

=type-parent Domain

  Object

=type-example-1 Domain

  # given: synopsis

  use Zing::Domain;

  my $domain = Zing::Domain->new(name => 'changelog');

=cut

=type Env

  Env

=type-library Env

Nano::Types

=type-composite Env

  InstanceOf["Nano::Env"]

=type-parent Env

  Object

=type-example-1 Env

  # given: synopsis

  use Nano::Env;

  my $env = Nano::Env->new;

=cut

=type KeyVal

  KeyVal

=type-library KeyVal

Nano::Types

=type-composite KeyVal

  InstanceOf["Zing::KeyVal"]

=type-parent KeyVal

  Object

=type-example-1 KeyVal

  # given: synopsis

  use Zing::KeyVal;

  my $domain = Zing::KeyVal->new(name => 'user-12345');

=cut

=type Nano

  Nano

=type-library Nano

Nano::Types

=type-composite Nano

  InstanceOf["Nano"]

=type-parent Nano

  Object

=type-example-1 Nano

  # given: synopsis

  use Nano;

  my $nano = Nano->new;

=cut

=type Node

  Node

=type-library Node

Nano::Types

=type-composite Node

  InstanceOf["Nano::Node"]

=type-parent Node

  Object

=type-example-1 Node

  # given: synopsis

  use Nano::Node;

  my $node = Nano::Node->new;

=cut

=type Nodes

  Nodes

=type-library Nodes

Nano::Types

=type-composite Nodes

  InstanceOf["Nano::Nodes"]

=type-parent Nodes

  Object

=type-example-1 Nodes

  # given: synopsis

  use Nano::Nodes;

  my $nodes = Nano::Nodes->new;

=cut

=type Search

  Search

=type-library Search

Nano::Types

=type-composite Search

  InstanceOf["Nano::Search"]

=type-parent Search

  Object

=type-example-1 Search

  # given: synopsis

  use Nano::Nodes;
  use Nano::Search;

  my $search = Nano::Search->new(nodes => Nano::Nodes->new);

=cut

=type Stash

  Stash

=type-library Stash

Nano::Types

=type-composite Stash

  ConsumerOf["Nano::Stash"]

=type-parent Stash

  Object

=type-example-1 Stash

  # given: synopsis

  package Example::Stash;

  use Moo;

  extends 'Nano::Node';

  with 'Nano::Stash';

  package main;

  my $stash = Example::Stash->new;

=cut

=type Table

  Table

=type-library Table

Nano::Types

=type-composite Table

  InstanceOf["Zing::Table"]

=type-parent Table

  Object

=type-example-1 Table

  # given: synopsis

  use Zing::Table;

  my $lookup = Zing::Table->new(name => 'users');

=cut

=type Track

  Track

=type-library Track

Nano::Types

=type-composite Track

  ConsumerOf["Nano::Track"]

=type-parent Track

  Object

=type-example-1 Track

  # given: synopsis

  package Example::Track;

  use Moo;

  extends 'Nano::Node';

  with 'Nano::Track';

  package main;

  my $track = Example::Track->new;

=cut

package main;

BEGIN {
  $ENV{ZING_STORE} = 'Zing::Store::Hash';
}

my $test = testauto(__FILE__);

my $subs = $test->standard;

$subs->synopsis(fun($tryable) {
  ok my $result = $tryable->result;

  $result
});

ok 1 and done_testing;
