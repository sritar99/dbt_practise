# dbt_demo
1.Install python \
2.Check python version \
  &ensp; python --version  \
3.create a folder and navigate to that folder \
4.initialise git empty directory with the current residing folder \
  &ensp; git init
5.create a text file namely requirements.txt in the current residing folder to have the information about bundle requirements as in below \
  &ensp; dbt-snowflake==1.7.1 \
  &ensp; sqlfluff==2.3.5 \
  &ensp; sqlfluff-templater-dbt==2.3.5 \
6.open a terminal and create a virtul python environment \
  &ensp; python -m venv title_pyenv \
7.initialise the virtual environment \
  &ensp; title_pyenv/Scripts/activate \
8.installing the dependencies \
  &ensp; pip install -r requirements.txt \
9.check the dbt command \
  &ensp; dbt -h \
10.creation of dbt project \
   &ensp; dbt init project_name 
-----------------------------------------------------------------------------------------------------------
Common DBT Commands \
dbt debug \
dbt run \
dbt run --select model_name \
dbt deps \
dbt test \
dbt seed \
dbt snapshot \
dbt docs generate \
dbt docs serve \
dbt source freshness \
dbt run-operation macro_name --args '{role: reporter}'




