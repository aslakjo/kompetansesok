Feature: Laste ned db_dumps
  For å kunne eksportere data effektict
  Må en bruker kunne laste ned mysql db_dumps fra siten

  Scenario: Link til db_dumps
    Gitt at jeg er på hovedsiden
    Når jeg klikker på linken "Last ned databasen"
    Så skal jeg se en liste over database dumps

  Scenario: Tom liste når ingen dumps er laget
    Gitt at jeg er på hovedsiden
    Når jeg klikker på linken "Last ned databasen"
    Så skal jeg se en tom liste over database dumps