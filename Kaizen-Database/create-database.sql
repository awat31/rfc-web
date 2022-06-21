DROP DATABASE IF EXISTS kaizen;
CREATE DATABASE kaizen;

USE kaizen;

DROP TABLE IF EXISTS services;
DROP TABLE IF EXISTS RFC;

CREATE TABLE services (
  service_id INTEGER NOT NULL PRIMARY KEY,
  service_name VARCHAR(255),
  service_manager VARCHAR(255)
);

CREATE TABLE RFC (
  rfc_id INTEGER NOT NULL PRIMARY KEY,
  rfc_title VARCHAR(255),
  requested_by VARCHAR(255),
  responsible VARCHAR(255),
  submitted_date DATE,
  due_date DATE,
  completed_date DATE,
  duration FLOAT,
  rfc_type VARCHAR(12),
  maintenance_type VARCHAR(12),
  description TEXT(65535),
  instructions TEXT(65535),
  service_id INT,
  impact_detail TEXT(65535),
  go_ahead VARCHAR (3),
  acceptance_date DATE,
  accepted_by VARCHAR(255),
  related_queries VARCHAR(255),
  testing TEXT(65535),
  user_impact TEXT(65535),
  security TEXT(65535),
  service_docs TEXT(65535),
  user_docs TEXT(65535),
  communication_plan TEXT(65535),
  success_fail TEXT(65535),
  notes TEXT(65535),
  FOREIGN KEY (service_id) REFERENCES services(service_id)
);
