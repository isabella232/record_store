# CHANGELOG

## 6.3.1
- Improve resiliency in the face of temporary provider outages [BUGFIX]

## 6.3.0
- Support for configurable number of threads via environment variable [FEATURE]

## 6.2.1
- Improved error reporting after timeouts [FEATURE]

## 6.2.0
- Add validation for non-terminal conflict with wildcard [FEATURE]

## 6.1.2
- Retry on connection errors [FEATURE]

## 6.1.1
- Emit messages when waiting for rate-limit to elapse for DNSimple and NS1 providers, so deployment does not timeout [BUGFIX]

## 6.1.0
- sort zone files [FEATURE]
- CLI support for specifying zones for validate_authority [FEATURE]
- retry failed lookup using another nameserver if unreachable [BUGFIX]
- ignore records other than NS in authority section [BUGFIX]

## 6.0.1
- add API rate limiting to DNSimple provider [FEATURE]

## 6.0.0
- add `--all` option for `record-store diff` to compare ignored records too [FEATURE]

## 5.11.0
- support PTR record type [FEATURE]

## 5.10.0
- add `record-store validate_authority` command to sanity check delegation [FEATURE]
- fix handling of NXDOMAIN, etc. when fetching authoritative nameservers [BUGFIX]

## 5.9.0
- add `--all` option for `record-store list` to list ignored records too [FEATURE]
- add `record-store info` command to list providers and delegation for zones [FEATURE]

## 5.8.0
- support SSHFP record type [FEATURE]

## 5.7.4
- NS1: changing the way long TXT records are processed (no more splitting to do on our side) [BUGFIX]

## 5.7.1
- add API rate limit for NS1 provider [FEATURE]

## 5.7.0
- add OCI library as runtime dependency [FEATURE]

## 5.6.0
- add OCI provider [FEATURE]

## 5.5.4
- add long TXT record support (with quotes around 255 char long strings, depending on provider) [FEATURE]

## 5.5.3
- add NS1 provider [FEATURE]

## 5.4.3
- use fog-dynect 0.4.0 to avoid version override [REFACTOR]

## 5.4.2
- use Dyn API version 3.7.13 (instead of 3.7.0) to get CAA support [BUGFIX]

## 5.4.1
- case-insensitivity for CAA value validation [BUGFIX]

## 5.4.0
- add support for CAA records [FEATURE]

## 5.3.0
- case insensitivity for fqns (force to lowercsase) [FEATURE]

## 5.2.2
- support regex based ignore patterns [FEATURE]

## 5.2.1
- remove alias at domain root validation

## 5.2.0
- limit request rate for DynECT API to avoid 429 errors [FEATURE]

## 5.1.1
- allow underscore in CNAME as per RFC [BUGFIX]

## 5.1.0
- use concurrent sessions when multi-threaded to avoid "This session already has a job running" errors. [BUGFIX]

## 5.0.5
- Output progress messages for GoogleCloudDNS provider too. [BUGFIX]
- Fix quoting/escaping for TXT records. [BUGFIX]
- Make implementation-specific methods of Provider private. [REFACTOR]
- DRY up SPF support to use TXT superclass implementation. [REFACTOR]

## 5.0.4
- Replaces fog-dnsimple with dnsimple-ruby gem. [REFACTOR]

## 5.0.0
- Use DNSimple API v2 (via fog-dnsimple gem update).

## 4.0.7
- Fix issue updating records with same FQDN. [BUGFIX]
