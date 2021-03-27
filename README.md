# Administrate::Field::NestedHasMany

A plugin for nested has_many forms in [Administrate].

## Usage

Add to your `Gemfile`:

```ruby
gem "administrate-field-nested_has_many"
```

Run:

```bash
$ bundle install
```

Add to your `FooDashboard`:

```ruby
ATTRIBUTE_TYPES = {
  bars: Field::NestedHasMany.with_options(skip: :foo),
}
```

The `skip` option takes a single symbol or list of symbols.
It will prevent the nested form from displaying the fields for those attributes.

If a `Customer` `has_many :orders`,
and you want to render `orders` as a nested form on the customer edit page,
then it is generally necessary to add `skip: :customer` to the options
for the `NestedHasMany` field.
Otherwise, Administrate will try to render a field
for the order's `:customer` attribute,
which breaks the nested form logic.

## Compatibility

This gem depends on Administrate APIs that may change over time. For this reason,
some versions of this gem will be compatible only with some versions of Administrate.

This is a table of known compatibilities. It is accurate to the best of our knowledge.
Please let us know if you detect other incompatibilities:

| Versions of this gem | should work with these versions of Administrate |
|----------------------|-------------------------------------------------|
| prior to v1.3.0      | unknown                                         |
| v1.3.0               | up to v0.14                                     |
| master               | master                                          |

[Administrate]: https://github.com/thoughtbot/administrate
