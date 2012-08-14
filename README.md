test EAD revision
=================

The bash script in this repo checks out the new EAD Revised schema
and as well as a test collection of EAD2002 files.  It then runs
trang to generate an .xsd version of the schema.

The maven pom.xml file uses the Mojo XML Maven Plugin
http://mojo.codehaus.org/xml-maven-plugin/ to transform the EAD2002
files to EAD-Revised XML files.  It then attempts to validate all
the new EAD-Revised XML instances against the XSD schema output by
trang after processing the official RNG version.


Requirements
------------

 * java
 * maven
 * git
 * trang

Using
-----

```
./pull_codes.sh
mvn install
```
