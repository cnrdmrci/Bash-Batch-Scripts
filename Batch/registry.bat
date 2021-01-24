@echo off 

::Write data to registry
REG ADD HKEY_CURRENT_USER\Console /v Test /d "Test Data" 

::Read data from registry
REG QUERY HKEY_CURRENT_USER\Console /v Test
