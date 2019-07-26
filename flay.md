## Gem Flay

Flay analyzes ruby code for structural similarities. Differences in literal values, names, whitespace, and programming style are all ignored.
Code that flay reports as similar is a good candidate for refactoring.


Repositório: https://github.com/seattlerb/flay
Documentação: http://docs.seattlerb.org/flay/


Input
```
flay app
```


Output
```
Total score (lower is better) = 92

1) Similar code found in :defn (mass = 48)
  app/controllers/animals_controller.rb:21
  app/controllers/people_controller.rb:21

2) Similar code found in :defn (mass = 44)
  app/controllers/animals_controller.rb:12
  app/controllers/people_controller.rb:12
```
