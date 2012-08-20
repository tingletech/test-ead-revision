#!/usr/bin/env bash
set -eu
# assert the commands exist
which git trang

# get the EAD Revision (get on correct branch)
#git clone https://github.com/SAA-SDT/EAD-Revision.git
git clone https://github.com/tingletech/EAD-Revision.git
cd EAD-Revision
git checkout tingle_xslt
cd ..

# get ead test colleciton and use no versions w/o DTDs declared
git clone https://github.com/tingletech/ead-test-col.git
cd ead-test-col
git checkout no_dtd
cd ..

# generate the xsd version of the schema
trang EAD-Revision/ead_revised.rng ead_revised.xsd

# now we are ready to `mvn install` will exit 0 if it is able to
# transform the files and validate the results
