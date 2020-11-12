#!/bin/bash

# The purpose of this script is to do things with files generated by
# 'create-react-app' after 'build' is run.
# 1. Move files to a new directory called '/assets/invoice'
#    The resulting structure is '/assets/invoice/<etc>'
# 2. Update reference on generated files from
#    static/<etc>
#     to
#    /assets/invoice/<etc>
#

cd build
mkdir assets
mv static ../../assets/invoice
sed -i 's/\/static/\/assets\/invoice/g' index.html
mv index.html ../../pages/invoice.php