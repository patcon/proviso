## Proviso Acceptance Tests

Before writing any technical acceptance tests, which would require a
future discussion of frameworks and methodologies, here are some simple
tests to run manually. They should confirm functionality.


### MySQL

    mysqladmin ping -P3309

MySQL should saw that it's alive at this port.


### Apache (default site)

    vagrant ssh -c "cat /var/log/apache2/access.log" | nl | tail -1
    curl localhost:8080
    vagrant ssh -c "cat /var/log/apache2/access.log" | nl | tail -1

You should see the apache access log increment.
