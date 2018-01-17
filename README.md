# PropMan, A Property Management application

This is a property management application for
[*PropMan*](http://www.propman.my/)
by [Ajmal Nabil](http://www.github.com/ajmalnabil/).

## License

All source code in the [PropMan](http://www.propman.my/)
is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

For more information, see the
[*PropMan* Property Management Help](http://www.propman.my/help).
