CREATE TABLE account(
  prefix_id int,
  id int,
  name varchar UNIQUE,
  PRIMARY KEY (prefix_id, id)
);

CREATE TABLE account_transaction(
  id int PRIMARY KEY,
  account_prefix_id int,
  account_id int,
  credit_amount numeric(15, 2),
  debit_amount numeric(15, 2),
  date_time timestamp,
  FOREIGN KEY (account_prefix_id, account_id)
    REFERENCES account (prefix_id, id)
);

CREATE FUNCTION create_account(
  this_prefix_id int,
  this_name varchar
) RETURNS TABLE(
  prefix_id int,
  id int,
  name varchar
) AS $$
  DECLARE
  
  BEGIN
    INSERT INTO account(
      prefix_id int,
      id int,
      name varchar UNIQUE,
      PRIMARY KEY (prefix_id, id)
    );
  END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION create_account_transaction(
  this_id int,
  this_account_prefix_id int,
  this_account_id int,
  this_credit_amount numeric(15, 2),
  this_debit_amount numeric(15, 2)
) RETURNS TABLE(
  id int,
  account_prefix_id int,
  account_id int,
  credit_amount numeric(15, 2),
  debit_amount numeric(15, 2),
  date_time timestamp
) AS $$
  DECLARE
    this_date_time timestamp;
  BEGIN
    
  END;
$$ LANGUAGE plpgsql;


INSERT INTO account (prefix_id, id, account) VALUES ()
