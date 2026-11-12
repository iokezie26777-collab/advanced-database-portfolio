# Distributed and Cloud Database Analysis

## 1. Cloud Database Deployment

MongoDB Atlas was used to host the Bright Future University student database in the cloud.

The deployment uses a MongoDB Atlas cluster named `Cluster0`. This demonstrates how a university can use a managed cloud database instead of maintaining all database infrastructure locally.

## 2. Database Replication

Replication involves maintaining multiple copies of database data on different database servers.

For Bright Future University, replication can help ensure that student records remain available if one database server fails.

A replica set can contain:
- A primary node that accepts database writes.
- Secondary nodes that maintain copies of the data.
- An automatic election process to select another primary if the current primary becomes unavailable.

## 3. Database Sharding

Sharding distributes database records across multiple servers called shards.

For the university system, student records could be distributed using `matric_number` as a shard key.

This can help the university handle increasing numbers of students and database requests.

## 4. Availability and Consistency

**Availability:** The database should remain accessible to authorised university users, even when a server experiences problems.

**Consistency:** Student information should remain accurate across database operations and replicated copies, according to the configured consistency guarantees.

MongoDB provides read and write concern settings that help control consistency and acknowledgement behaviour.

## 5. Suitability

Cloud databases are suitable for Bright Future University because they provide managed infrastructure, remote access, scalability and options for improving availability.

Replication can support fault tolerance, while sharding can support growth as student records increase.

## 6. Implementation Evidence

A screenshot of the MongoDB Atlas cluster deployment is included in the screenshots folder.

Replication and sharding are discussed as distributed database design concepts. They are not claimed as separately configured or tested features in this project.
