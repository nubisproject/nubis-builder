#!/bin/bash
# shellcheck disable=SC2034
# https://github.com/koalaman/shellcheck/wiki/SC2034
#
# This is a collection of functions to test for dependancies
#

test_for_packer () {
    TEST=$(hash packer 2>&1) 2> /dev/null
    if [ $? != 0 ]; then
        message_print 'CRITICAL' 'packer must be installed and on your path!'
        message_print 'CRITICAL' 'See: https://packer.io/'
        message_print 'VERBOSE' "File: '${BASH_SOURCE[0]}' Line: '${LINENO}'"
        exit_clean 1
    fi
}

test_for_jq () {
    TEST=$(hash jq 2>&1) 2> /dev/null
    if [ $? != 0 ]; then
        message_print 'CRITICAL' 'jq must be installed and on your path!'
        message_print 'CRITICAL' 'See: https://github.com/stedolan/jq'
        message_print 'VERBOSE' "File: '${BASH_SOURCE[0]}' Line: '${LINENO}'"
        exit_clean 1
    fi
}

test_for_parallel () {
    TEST=$(hash parallel 2>&1) 2> /dev/null
    if [ $? != 0 ]; then
        message_print 'CRITICAL' 'parallel must be installed and on your path!'
        message_print 'VERBOSE' "File: '${BASH_SOURCE[0]}' Line: '${LINENO}'"
        exit_clean 1
    fi
}

test_for_aws_vault () {
    TEST=$(hash aws-vault 2>&1) 2> /dev/null
    if [ $? != 0 ]; then
        message_print 'CRITICAL' 'aws-vault must be installed and on your path!'
        message_print 'CRITICAL' 'See: https://github.com/99designs/aws-vault'
        message_print 'VERBOSE' "File: '${BASH_SOURCE[0]}' Line: '${LINENO}'"
        exit_clean 1
    fi
}
