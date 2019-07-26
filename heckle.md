## Heckle

Heckle is a mutation tester. It modifies your code and runs your tests to make sure they fail. The idea is that if code can be changed and your tests don’t notice, either that code isn’t being covered or it doesn’t do anything.

Repositório: https://github.com/seattlerb/heckle
Documentação: http://docs.seattlerb.org/heckle/


*Heckle* não é atualizado a muito tempo e não tem boa compatibilidade com rspec

## Mutant

Uma alternativa ao Heckle

Input
```
mutant --use rspec
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
