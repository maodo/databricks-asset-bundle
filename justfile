alias d := deploy
alias v := validate
alias s := summary


deploy $env:
    databricks bundle deploy -t $env

validate $env:
    databricks bundle validate -t $env

summary $env:
    databricks bundle summary -t $env

destroy $env:
    databricks bundle destroy -t $env --auto-approve

run $job $env:
    databricks bundle run -t $env $job 