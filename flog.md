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
