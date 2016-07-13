create table address(
  no int PRIMARY KEY,
  province varchar,
  town_city varchar,
  brgy varchar,
  road varchar
);

CREATE TABLE store(
  no int PRIMARY KEY,
  name varchar,
  address_no int REFERENCES address
);

create table store_transaction(
  no int PRIMARY KEY,
  store_no int REFERENCES store,
  or_no varchar,
  date_time timestamp
);

CREATE TABLE product_category(
  no int PRIMARY KEY,
  name varchar UNIQUE
);

CREATE TABLE brand(
  no int PRIMARY KEY,
  name varchar,
  manufacturer varchar
  product_category_no REFERENCES product_category
);

CREATE TABLE product(
  no int PRIMARY KEY,
  brand_no int REFERENCES brand,
  specification varchar,
  quantity numeric(10, 4),
  unit varchar,
  account_no int REFERENCES account
);

CREATE TABLE transaction_item(
  no int PRIMARY KEY,
  store_transaction_no int REFERENCES store_transaction,
  product_no int REFERENCES product,
  quantity numeric(10, 4),
  unit_price numeric(15, 2),
  amount numeric(15, 2)
);
