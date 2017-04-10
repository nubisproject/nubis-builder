#!/bin/bash
#
# This is a collection of functions to test for dependancies
#

test_for_packer () {
    if ! hash packer > /dev/null 2>&1; then
        message_print 'CRITICAL' 'packer must be installed and on your path!'
        message_print 'CRITICAL' 'See: https://packer.io/'
        message_print 'VERBOSE' "File: '${BASH_SOURCE[0]}' Line: '${LINENO}'"
        exit_clean 1
    fi
}

test_for_jq () {
    if ! hash jq > /dev/null 2>&1; then
        message_print 'CRITICAL' 'jq must be installed and on your path!'
        message_print 'CRITICAL' 'See: https://github.com/stedolan/jq'
        message_print 'VERBOSE' "File: '${BASH_SOURCE[0]}' Line: '${LINENO}'"
        exit_clean 1
    fi
}

test_for_parallel () {
    if ! hash parallel > /dev/null 2>&1; then
        message_print 'CRITICAL' 'parallel must be installed and on your path!'
        message_print 'VERBOSE' "File: '${BASH_SOURCE[0]}' Line: '${LINENO}'"
        exit_clean 1
    fi
}

test_for_aws_vault () {
    if ! hash aws-vault > /dev/null 2>&1; then
        message_print 'CRITICAL' 'aws-vault must be installed and on your path!'
        message_print 'CRITICAL' 'See: https://github.com/99designs/aws-vault'
        message_print 'VERBOSE' "File: '${BASH_SOURCE[0]}' Line: '${LINENO}'"
        exit_clean 1
    fi
}
