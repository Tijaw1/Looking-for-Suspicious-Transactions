-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/VGfiS6
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "transaction" (
    "id" INT   NOT NULL,
    "date" TIMESTAMP   NOT NULL,
    "amount" FLOAT   NOT NULL,
    "card" VARCHAR(20)   NOT NULL,
    "id_merchant" INT   NOT NULL,
    CONSTRAINT "pk_transaction" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "merchant_category" (
    "merchant" INT   NOT NULL,
    "name" VARCHAR(15)   NOT NULL,
    CONSTRAINT "pk_merchant_category" PRIMARY KEY (
        "merchant"
     )
);

CREATE TABLE "merchant" (
    "id" INT   NOT NULL,
    "name" VARCHAR(30)   NOT NULL,
    "id_merchant_category" INT   NOT NULL,
    CONSTRAINT "pk_merchant" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "credit_card" (
    "credit" VARCHAR(20)   NOT NULL,
    "cardholder_id" INT   NOT NULL,
    CONSTRAINT "pk_credit_card" PRIMARY KEY (
        "credit"
     )
);

CREATE TABLE "card_holder" (
    "id" INT   NOT NULL,
    "name" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_card_holder" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "transaction" ADD CONSTRAINT "fk_transaction__card" FOREIGN KEY("", "card")
REFERENCES "credit_card" ("", "credit");

ALTER TABLE "merchant" ADD CONSTRAINT "fk_merchant_id_merchant_category" FOREIGN KEY("id_merchant_category")
REFERENCES "merchant_category" ("merchant");

ALTER TABLE "credit_card" ADD CONSTRAINT "fk_credit_card__cardholder_id" FOREIGN KEY("", "cardholder_id")
REFERENCES "card_holder" ("", "id");

