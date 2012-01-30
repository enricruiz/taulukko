Taulukko
========

Generates easy grepable and cutable tables in ruby.

Installation
------------

Usage
-----

To use it:

    require 'taulukko'

Each table row is an array

    > table = Taulukko.new
    > table << ["BCN", "Barcelona"]
    > table << ["EAS", "Donostia"]
    > table << ["SVQ", "Sevilla"]

    > puts table
    BCN  Barcelona
    EAS  Donostia
    SVQ  Sevilla

Add heading

    > table = Taulukko.new
    > table.headings = ["IATA", "City"]
    > table << ["BCN", "Barcelona"]
    > table << ["EAS", "Donostia"]
    > table << ["SVQ", "Sevilla"]

    > puts table
    IATA  City
    ----  ---------
    BCN   Barcelona
    EAS   Donostia
    SVQ   Sevilla


Copyright
---------

Copyright (c) 2012 Enric Ruiz. See LICENSE.txt for further details.

