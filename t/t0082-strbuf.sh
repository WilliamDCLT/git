#!/bin/sh

test_description="Test the strbuf API.
"
. ./test-lib.sh

test_expect_success 'basic test on strbuf_grow()' '
	test-strbuf basic_grow
'

test_expect_success 'check strbuf behavior in usual use cases ' '
	test-strbuf strbuf_check_behavior
'

test_expect_success 'overflow while calling strbuf_grow' '
	test_must_fail test-strbuf grow_overflow
'

test_done
