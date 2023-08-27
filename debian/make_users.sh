#!/bin/sh -e
###
# This script will create the users and groups that are required to build qmail.
# This gets around the chicken in the egg problem where the users are installed
# by the qmail-uids-gids package, but building that package requires that the
# system already have those users and groups.
###
groupadd -g 64010 qmail || return 1
addgroup --system nofiles || return 1
useradd -u 64010 -g nofiles -d /var/lib/qmail/alias alias || return 1
useradd -u 64011 -g nofiles -d /var/lib/qmail qmaild || return 1
useradd -u 64015 -g nofiles -d /var/lib/qmail qmaill || return 1
useradd -u 64016 -g nofiles -d /var/lib/qmail qmailp || return 1
useradd -u 64014 -g qmail -d /var/lib/qmail qmailq || return 1
useradd -u 64013 -g qmail -d /var/lib/qmail qmailr || return 1
useradd -u 64012 -g qmail -d /var/lib/qmail qmails || return 1
