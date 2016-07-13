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
  amount numeric(15, 2),
  date_time timestamp,
  FOREIGN KEY (account_prefix_no, account_no)
    REFERENCES account (prefix_no, no)
);
