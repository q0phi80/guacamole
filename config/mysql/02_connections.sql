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
INSERT INTO guacamole_connection (connection_name, protocol) VALUES ('Windows 10 (Attack Box)', 'rdp');
INSERT INTO guacamole_connection (connection_name, protocol) VALUES ('Kali (Attacker Box)', 'rdp');
-- Add parameters to the Windows connection
INSERT INTO guacamole_connection_parameter VALUES (1, 'hostname', '10.0.1.53');
INSERT INTO guacamole_connection_parameter VALUES (1, 'port', '3389');
INSERT INTO guacamole_connection_parameter VALUES (1, 'username', 'local-user');
INSERT INTO guacamole_connection_parameter VALUES (1, 'password', 'Password@1');
INSERT INTO guacamole_connection_parameter VALUES (1, 'domain', 'first');
INSERT INTO guacamole_connection_parameter VALUES (1, 'security', 'any');
INSERT INTO guacamole_connection_parameter VALUES (1, 'ignore-cert', 'true');
INSERT INTO guacamole_connection_parameter VALUES (1, 'color-depth', '32');
-- Add parameters to the Kali Linux connection
INSERT INTO guacamole_connection_parameter VALUES (2, 'hostname', '10.0.1.11');
INSERT INTO guacamole_connection_parameter VALUES (2, 'port', '3390');
INSERT INTO guacamole_connection_parameter VALUES (2, 'username', 'kali');
INSERT INTO guacamole_connection_parameter VALUES (2, 'password', 'kali');
INSERT INTO guacamole_connection_parameter VALUES (2, 'security', 'any');
INSERT INTO guacamole_connection_parameter VALUES (2, 'ignore-cert', 'true');
INSERT INTO guacamole_connection_parameter VALUES (2, 'color-depth', '32');
