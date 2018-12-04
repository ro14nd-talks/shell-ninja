# Example code for presentation "Shell Ninja"

This code is a sample wrapper script around `kubectl`, supposed to support "canary" and "blue-green" deployments.
It's whole purpose is to demonstrate the convention that we are using in our build script [syndesis](https://github.com/syndesisio/syndesis/blob/master/tools/bin/syndesis):

* Return values other than plain return codes
* Error handling
* Integration tests (run `bats test` for starting them)
* Debugging
* Modularization
* Option parsing (but should be better done by getopts really)

The talk "Shell Ninja" is a slideless talk, so nothing else than this example codes exists.
You can examine various steps in developing the code by looking at the git tags.

The talk's abstract is:

> Unix shell scripts are our constant companions since the seventies, and although there have been many other contenders like Perl or Python, Shell scripts are still here, alive and kicking. With the rise of the container writing shell scripts becomes an essential skill again, as plain shell scripts are the least common denominator for every Linux container. Even we as developers in a DevOps world can not neglect shell scripting.In this hands-on session, we will see how we can polish our shell-fu. We will see how the best practices we all have learned and love when doing our daily coding can be transferred to the shell scripting. An opinionated approach to coding conventions will be demonstrated for writing idiomatic, modular and maintainable scripts. Integration tests for non-trivial Shell scripts are as essential as for our applications, and we will learn how to write them. These techniques and much more will be part of our ride through the world of Bash & Co. Come and enjoy some serious shell script coding, you won’t regret it and will see that Shell coding can be fun, too.

--------

**I'm happy about any feedback ! Please open an issue and/or PR to discuss.**
