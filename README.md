# Odoo local dev setup

A docker-compose file providing the following configuration:
- two containers: one for Odoo itself, the other for the PostgresSQL rdbms.
- bundled addons are automatically loaded at startup
- Postgres database and file assets (e.g. uploads) are persisted in the docker volumes.

## Usage

On windows, make sure to install Docker desktop, which ships with the docker-compose executable.
Then, run the `docker-compose` command from the project top-level folder. 
Finally, point your browser to http://localhost:8069/ and walk through the Odoo installation wizard.

## Installing the Addons

Once you have gone through the installation wizard, you can proceed to install the bundled Addons.
Navigate to `Apps`, clear all filters in the search bar, then search and install the bundled addons
in the following order:

- `web_widget_x2many_2d_matrix` (this is a dependency of the timesheet module).
- `hr_timesheet_sheet`

You should now be able to log timesheets. You won't have to do anything in order to unlock the Project/task
modules as these are automatically activated by `hr_timesheet_sheet`.

