import { pgEnum, integer, pgTable, varchar } from "drizzle-orm/pg-core";

export const CustomerStatus = pgEnum("customer_status", ["active", "inactive", "pending"]);

export const Customers = pgTable("customers", {
  id: integer().primaryKey().generatedAlwaysAsIdentity(),
  name: varchar({ length: 255 }).notNull(),
  status: CustomerStatus("customer_status").notNull().default("active"),
  age: integer().notNull(),
  email: varchar({ length: 255 }).notNull().unique(),
});