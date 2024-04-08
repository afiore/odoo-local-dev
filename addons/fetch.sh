#!/bin/sh
if [ -d "/downloaded-addons/hr_timesheet_sheet" ]; then 
  echo "found 'hr_timesheet_sheet'. Skipping download."
  exit 0
fi
rm -rf timesheet
git clone --branch 13.0 --depth 1 --filter=blob:none --sparse https://github.com/OCA/timesheet.git
cd timesheet
git sparse-checkout set hr_timesheet_sheet
cd ..
mv timesheet/hr_timesheet_sheet /downloaded-addons
exit 0
