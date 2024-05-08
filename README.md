# Odoo local dev setup

A docker-compose file providing the following configuration:
- two containers: one for Odoo itself, the other for the PostgresSQL rdbms.
- bundled plugins are automatically loaded at startup
- Postgres database and file assets (e.g. uploads) are persisted in the docker volumes.

## Usage

On windows, make sure to install Docker desktop, which ships with the docker-compose executable.
Then, run the `docker-compose` command from the project top-level folder. 
Finally, point your browser to http://localhost:8069/ and walk through the Odoo installation wizard.