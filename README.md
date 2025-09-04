# ORM-Layer

This repository provides an **AWS Lambda Layer** containing the ORM and schema definitions used to interact with our database.

## 📌 Purpose

The main goal of this repository is to centralize and distribute the ORM as a **Lambda Layer**, so multiple Lambda functions can share the same database access layer without duplicating dependencies.

## 🛠️ ORM Choice

We chose **[Drizzle ORM](https://orm.drizzle.team/)** because of its:

- ⚡ **Lightweight footprint** – much smaller and faster than Prisma in a serverless environment.
- 🛡️ **Type-safe queries** – ensuring compile-time safety when interacting with the database.
- 🌐 **Serverless friendly** – optimized for Lambda cold starts and small bundle sizes.

## 🗄️ Database Schema

This repository also contains the schema for the current **Amazon RDS** instance we use.  
The schema definitions are located in the `/schema` folder, managed through Drizzle’s migration and schema tools.


## Util links- [Drizzle ORM Documentation](https://orm.drizzle.team/)
- [Drizzle Schema](https://orm.drizzle.team/docs/sql-schema-declaration#organize-your-schema-files)
- [Drizzel Types](https://orm.drizzle.team/docs/column-types/pg)