# unbound-formula
Install and configure the Unbound DNS server

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``unbound``
-----------

Installs the ``unbound`` server package and service.

``unbound.config``
-----------------

Installs the unbound configuration file included in this formula
and populate it by the following values from the pillar :
- `interface`
- `access-control`
