Contribution Guide
==================

Thanks for your interest in contributing to nncli(1). This guide
attempts to document everything you need to know to participate in the
development community. As with everything else in this repository,
suggestions are welcome.

Community Guidelines
--------------------

Given that the nncli(1) community is still in the early stages of
formation, community guidelines have yet to be rigidly codified. For
the time being, the following general expectations should be
considered normative:

- Participants should do their part to make this a welcoming
  community, free from harassment and discrimination, where everyone
  feels safe to contribute. Any behavior that threatens this will not
  be tolerated, and repeated violations will result in expulsion from
  the community. Anyone who egregiously violates this principle, for
  instance by doxxing another community member, whether in official
  community channels or elsewhere, will be immediately and permanently
  banned.

- The goal in providing official community channels (e.g., the mailing
  list), is to provide a public space for the development of nncli(1)
  with high signal-to-noise ratio. Persuant to this, community members
  should understand that disagreements naturally arise from time to
  time. If they don't pertain to nncli(1), then they should be
  discussed outside official community channels. This is not a
  judgment about the importance of any given topic, merely a
  recognition that this community cannot sustain discussion about
  anything and everything.

- Maintainers shall be selected from the community as-needed based on
  their ability to productively contribute to nncli(1). Productivity
  in this context is measured *both* in terms of code contributions
  *and* ability to forge consensus in community discussions.

- Decisions regarding the development of nncli(1) fall to the
  maintainers collectively. When the maintainers are not able to form
  a consensus on the best path forward, the lead maintainer shall be
  the final authority on decisions.

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

All discussion takes place on the `issue tracker`_.

Pull requests are welcome.

Releases
--------

Releases are published to PyPI_.
Signed source tarballs are maintained on the `releases page`_.

Release artifacts created prior to December 1, 2022 can be verified
in one of two ways:

1. Each .tar.gz archive is signed inline with ``signify`` and can be
   verified (using the -z flag) against the public key located at
   https://www.danielmoch.com/static/djmoch-signify.pub

2. Using the .sig file corresponding to an archive, verification can
   be done with ``gpg`` against the public key located at
   https://www.danielmoch.com/static/gpg.asc

Archives created on or after December 1, 2022 will only be signed with
``signify``, and not with ``gpg``.
To support the use of ``minisign``, which is compatable with ``signify``,
detached signatures will be created.
These signature files are indicated with a ``.minisig`` extension.

.. _PyPI: https://pypi.org/project/nncli/
.. _issue tracker: https://github.com/djmoch/nncli/issues
.. _releases page: https://github.com/djmoch/nncli/releases
