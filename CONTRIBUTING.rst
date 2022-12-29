Contribution Guide
==================

Thanks for your interest in contributing to ``nncli``. This guide
attempts to document everything you need to know to participate in the
development community. As with everything else in this repository,
suggestions are welcome.

Getting Started
---------------

To get started with the code, you will need to clone it and install
development dependencies. We recommend the isolating your development
environment with ``venv`` Python module. We also recommend using
``pip-tools`` to manage dependencies. Its use is expected when
updating requirements files.

::

   $ git clone https://git.danielmoch.com/nncli.git
   $ cd nncli
   $ python3 -m venv .venv
   $ source .venv/bin/activate
   (.venv)$ pip install pip-tools
   (.venv)$ pip-sync requirements-dev.txt

Discussion and Requests
-----------------------

All discussion takes place on the public `mailing list`_. The list's
archive can be found at https://lists.danielmoch.com/nncli-dev.

Patches and pull requests are welcome, preferably via emailed output
of ``git request-pull`` sent to the mailing list (see here_ for more
information). Bug reports should also be directed to the mailing list.

If you aren't hosting a fork anywhere online, you can also send patches
using ``git format-patch`` (again, see `the official documentation`_ ).

Releases
--------

Releases are published to PyPI_. Signed source tarballs are maintained
at https://dl.danielmoch.com/nncli. Instructions for verifying
tarballs are in the README file at the previous link.

.. _PyPI: https://pypi.org/project/nncli/
.. _mailing list: nncli-dev@danielmoch.com
.. _the official documentation: https://www.git-scm.com/docs/git-format-patch
.. _here: https://www.git-scm.com/docs/git-request-pull
