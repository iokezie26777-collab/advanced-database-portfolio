
# Portfolio 3: Transactions and Concurrency

## 1. Introduction

This portfolio demonstrates transaction management and concurrency control in PostgreSQL using the Bright Future University Student Management System as a case study.

The practical exercises cover transaction commitment, rollback, isolation levels, and row-level locking.

## 2. Objectives

- Demonstrate how transactions are committed using `COMMIT`.
- Demonstrate how uncommitted changes are reversed using `ROLLBACK`.
- Configure and verify the `REPEATABLE READ` isolation level.
- Demonstrate concurrency control using PostgreSQL row-level locking.
- Understand how PostgreSQL manages simultaneous database operations.

## 3. Practical Activities

### 3.1 COMMIT Transaction

A test table named `transaction_test` was created. A record for John Okafor was inserted and committed.

The `COMMIT` command permanently saved the transaction.

### 3.2 ROLLBACK Transaction

A record for Mary Adeyemi was inserted within a transaction and then cancelled using `ROLLBACK`.

The final query confirmed that Mary's record was not saved, demonstrating how PostgreSQL reverses uncommitted changes.

### 3.3 Transaction Isolation

The transaction isolation level was set to `REPEATABLE READ`.

The PostgreSQL command `current_setting('transaction_isolation')` returned `repeatable read`, confirming that the isolation level was successfully applied.

### 3.4 Concurrency Control Using Row-Level Locking

Two separate Query Tool sessions were used to demonstrate concurrency control.

- Session 1 selected John's record using `SELECT ... FOR UPDATE`, placing a row-level lock on the record.
- Session 2 attempted to update the same record.
- The second transaction waited while the first transaction held the lock.
- After Session 1 executed `COMMIT`, Session 2 completed successfully.

The update returned `UPDATE 1`, demonstrating how PostgreSQL uses row-level locking to control concurrent modifications.

## 4. Tools and Technologies

- PostgreSQL
- pgAdmin 4
- SQL
- GitHub

## 5. Repository Structure

```text
portfolio-3-transactions-concurrency/
│
├── README.md
│
├── sql-scripts/
│   └── portfolio3_transactions.sql
│
└── screenshots/
    ├── commit-transaction.png
    ├── rollback-transaction.png
    ├── transaction-isolation.png
    ├── concurrency-lock-wait.png
    └── concurrency-result.png
```

## 6. Conclusion

This practical exercise provided hands-on experience with PostgreSQL transaction management and concurrency control.

It demonstrated how `COMMIT` saves changes, `ROLLBACK` reverses uncommitted changes, transaction isolation controls data visibility, and row-level locking prevents conflicting simultaneous updates.

These mechanisms help maintain database consistency and reliability in multi-user database environments.
