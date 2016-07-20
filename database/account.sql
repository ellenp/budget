CREATE TABLE account(
  prefix_no int,
  no int,
  name varchar UNIQUE,
  PRIMARY KEY (prefix_no, no)
);

CREATE TABLE account_transaction(
  no int PRIMARY KEY,
  account_prefix_no int,
  account_no int,
  credit_amount numeric(15, 2),
  debit_amount numeric(15, 2),
  date_time timestamp,
  FOREIGN KEY (account_prefix_no, account_no)
    REFERENCES account (prefix_no, no)
);

CREATE FUNCTION create_account(
  this_prefix_no int,
  this_name varchar
) RETURNS TABLE(
  prefix_no int,
  no int,
  name varchar
) AS $$
  DECLARE
  
  BEGIN
    
  END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION create_account_transaction(
  this_no int,
  this_account_prefix_no int,
  this_account_no int,
  this_credit_amount numeric(15, 2),
  this_debit_amount numeric(15, 2)
) RETURNS TABLE(
  no int,
  account_prefix_no int,
  account_no int,
  credit_amount numeric(15, 2),
  debit_amount numeric(15, 2),
  date_time timestamp
) AS $$
  DECLARE
    this_date_time timestamp;
  BEGIN
    
  END;
$$ LANGUAGE plpgsql;
