#!/usr/bin/env bats

# Load bats modules
load '/usr/lib/bats-support/load.bash'
load '/usr/lib/bats-assert/load.bash'

@test "basic_loop" {
    CONFIG="tests/sup/snmpd-smartctl-connector.cfg" run usr/sbin/snmpd-smartctl-connector << 'END'
getnext
.1.3.6.1.4.1.38696.2.1
getnext
.1.3.6.1.4.1.38696.2.1.2.1.1.1
getnext
.1.3.6.1.4.1.38696.2.1.2.1.1.2
getnext
.1.3.6.1.4.1.38696.2.1.2.1.2.1
getnext
.1.3.6.1.4.1.38696.2.1.2.1.2.2
getnext
.1.3.6.1.4.1.38696.2.1.2.1.3.1
getnext
.1.3.6.1.4.1.38696.2.1.2.1.3.2
getnext
.1.3.6.1.4.1.38696.2.1.2.1.4.1
getnext
.1.3.6.1.4.1.38696.2.1.2.1.4.2
getnext
.1.3.6.1.4.1.38696.2.1.2.1.5.1
getnext
.1.3.6.1.4.1.38696.2.1.2.1.5.2
getnext
.1.3.6.1.4.1.38696.2.1.2.1.6.1
getnext
.1.3.6.1.4.1.38696.2.1.2.1.6.2
getnext
.1.3.6.1.4.1.38696.2.1.2.1.7.1
getnext
.1.3.6.1.4.1.38696.2.1.2.1.7.2
getnext
.1.3.6.1.4.1.38696.2.1.2.1.8.1
getnext
.1.3.6.1.4.1.38696.2.1.2.1.8.2
getnext
.1.3.6.1.4.1.38696.2.1.2.1.9.1
getnext
.1.3.6.1.4.1.38696.2.1.2.1.9.2
getnext
.1.3.6.1.4.1.38696.2.1.2.1.10.1
getnext
.1.3.6.1.4.1.38696.2.1.2.1.10.2
getnext
.1.3.6.1.4.1.38696.2.1.2.1.11.1
getnext
.1.3.6.1.4.1.38696.2.1.2.1.11.2
getnext
.1.3.6.1.4.1.38696.2.1.2.1.12.1
getnext
.1.3.6.1.4.1.38696.2.1.2.1.12.2
getnext
.1.3.6.1.4.1.38696.2.1.2.1.13.1
getnext
.1.3.6.1.4.1.38696.2.1.2.1.13.2
getnext
.1.3.6.1.4.1.38696.2.1.2.1.14.1
getnext
.1.3.6.1.4.1.38696.2.1.2.1.14.2
getnext
.1.3.6.1.4.1.38696.2.1.2.1.15.1
getnext
.1.3.6.1.4.1.38696.2.1.2.1.15.2
getnext
.1.3.6.1.4.1.38696.2.1.2.1.16.1
getnext
.1.3.6.1.4.1.38696.2.1.2.1.16.2
getnext
.1.3.6.1.4.1.38696.2.1.2.1.17.1
getnext
.1.3.6.1.4.1.38696.2.1.2.1.17.2
quit
END

    assert_success
    assert_line --index 8 "/dev/sda"
    assert_line --index 11 "/dev/sdb"
    assert_line --index 25 "ZFA0H5XE"
    assert_line --index 28 "5MT0CG5Q"
}
