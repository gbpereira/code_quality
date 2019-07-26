# Code quality

A small project to test flay, flog and heckle gems from http://ruby.sadi.st/Ruby_Sadist.html

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


## Gem Flog

Flog shows you the most torturous code you wrote. The more painful the code, the higher the score. The higher the score, the harder it is to test.
Run it against your best stuff. I double-dog dare you.
Flog essentially scores an ABC metric: Assignments, Branches, Calls, with particular attention placed on calls.


Repositório: https://github.com/seattlerb/flog


Documentação: http://docs.seattlerb.org/flog/


Input
```
find app -name \*.rb | xargs flog
```


Output
```
111.0: flog total
  5.3: flog/method average

12.7: Animal#swallow_owner_minimun_age app/models/animal.rb:22-23
11.5: Animal#owner_monthly_cost        app/models/animal.rb:30-32
  9.4: AnimalsController#update         app/controllers/animals_controller.rb:21-27
  9.4: PeopleController#update          app/controllers/people_controller.rb:21-27
  9.1: Animal#none
  7.7: Animal#cat_owner_name_initial    app/models/animal.rb:26-27
  6.8: AnimalsController#create         app/controllers/animals_controller.rb:12-18
```


## Gem Heckle

Heckle is a mutation tester. It modifies your code and runs your tests to make sure they fail. The idea is that if code can be changed and your tests don’t notice, either that code isn’t being covered or it doesn’t do anything.

Repositório: https://github.com/seattlerb/heckle


Documentação: http://docs.seattlerb.org/heckle/


*Heckle* não é atualizado a muito tempo e não tem boa compatibilidade com rspec

## Gem Mutant

Uma alternativa ao Heckle.

Repositório: https://github.com/mbj/mutant


Input
```
RAILS_ENV=test bundle exec mutant -r ./config/environment --use rspec Person
```


Output
```
Active subjects: 0
Mutant configuration:
Matcher:         #<Mutant::Matcher::Config match_expressions: [Person]>
Integration:     Mutant::Integration::Rspec
Jobs:            4
Includes:        []
Requires:        ["./config/environment"]
Subjects:        0
Mutations:       0
Results:         0
Kills:           0
Alive:           0
Runtime:         0.06s
Killtime:        0.00s
Overhead:        Inf%
Mutations/s:     0.00
Coverage:        100.00%
```
