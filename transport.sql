CREATE TABLE transport_means(
  no int PRIMARY KEY,
  vehicle varchar,
  line varchar,
  route varchar
);

CREATE TABLE travel(
  no int PRIMARY KEY,
  transport_means_no REFERENCES transport_means,
  origin int REFERENCES location,
  destination REFERENCES location,
  amount numeric(15, 2),
  date_time timestamp,
  account_transaction_no REFERENCES account_transaction
);
