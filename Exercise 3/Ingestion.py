
import pandas as pd
import sqlalchemy as sqlal

engine = sqlal.create_engine('sqlite://', echo=False)
#----------------------------------------------------------------
# Ingestion in the Database
#----------------------------------------------------------------

file1 = pd.read_csv("tmp_test_micro_marketing_spend.csv",header=0)
file1.to_sql("tmp_test_micro_marketing_spend",con=engine, 
             if_exists="replace")

file2 = pd.read_csv("tmp_test_micro_plan_views.csv",header=0)
file2.to_sql("tmp_test_micro_plan_views",con=engine, 
             if_exists="replace")

file3 = pd.read_csv("tmp_test_micro_plans.csv",header=0)
file3.to_sql("tmp_test_micro_plans",con=engine, 
             if_exists="replace")

file4 = pd.read_csv("tmp_test_micro_transactions.csv",header=0)
file4.to_sql("tmp_test_micro_transactions",con=engine, 
             if_exists="replace")
