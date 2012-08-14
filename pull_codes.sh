#!/usr/bin/env bash
set -eu
which git trang
git clone https://github.com/SAA-SDT/EAD-Revision.git
git clone https://github.com/tingletech/ead-test-col.git
cd ead-test-col
git checkout no_dtd
cd ..
trang EAD-Revision/ead_revised.rng ead_revised.xsd
