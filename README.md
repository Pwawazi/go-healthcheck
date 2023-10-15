# Health checker
### Simple CLI app

This is a simple implementation of a healthchecker application that confirms the state of any given website.

To use it:

  * Run `make run` to build your systems binary and execute. You shall be prompted for the domain name you would wish to check upon.

If you are on windows and cannot run the Makefile:

  * Run `go build` to build your systems binary and execute.
  * Run `./go-healthcheck.exe --domain=YOUR-DOMAIN.com`. Replace 'YOUR-DOMAIN.com' with the domain of your choice.
