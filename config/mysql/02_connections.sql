-- -------------------------------------------------------------------------
-- Trivadis AG, Infrastructure Managed Services
-- Saegereistrasse 29, 8152 Glattbrugg, Switzerland
-- -------------------------------------------------------------------------
-- Name.......: 02_connections.sql
-- Author.....: Stefan Oehrli (oes) stefan.oehrli@trivadis.com
-- Editor.....: Stefan Oehrli
-- Date.......: 2020.10.26
-- Revision...: 
-- Purpose....: Create DB Connections
-- Notes......: --
-- Reference..: --
-- --------------------------------------------------------------------------

use guacadb;

-- Create connection
INSERT INTO guacamole_connection (connection_name, protocol) VALUES ('Windows 10 (Initial Foothold)', 'rdp');
INSERT INTO guacamole_connection (connection_name, protocol) VALUES ('Kali (Attacker Box)', 'ssh');
INSERT INTO guacamole_connection (connection_name, protocol) VALUES ('OUD Server (oud - 10.0.1.5)', 'ssh');

-- Add parameters to the Windows connection
INSERT INTO guacamole_connection_parameter VALUES (1, 'hostname', '10.0.1.50');
INSERT INTO guacamole_connection_parameter VALUES (1, 'port', '3389');
-- Add parameters to the Database connection
INSERT INTO guacamole_connection_parameter VALUES (2, 'hostname', '10.0.1.11');
INSERT INTO guacamole_connection_parameter VALUES (2, 'port', '22');
INSERT INTO guacamole_connection_parameter VALUES (2, 'username', 'labuser');
-- Add parameters to the OUD connection
INSERT INTO guacamole_connection_parameter VALUES (3, 'hostname', '10.0.1.5');
INSERT INTO guacamole_connection_parameter VALUES (3, 'port', '22');
INSERT INTO guacamole_connection_parameter VALUES (3, 'username', 'oracle');