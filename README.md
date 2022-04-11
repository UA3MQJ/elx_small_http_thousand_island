# THISRV

Minimal HTTP server for stress tests, based on https://github.com/mtrudel/bandit

Build:
> mix deps.get


Start:

> mix run --no-halt
 
# result 

```
wrk -t100 -c500 -d10s http://127.0.0.1:4000/123

Running 1s test @ http://127.0.0.1:4000/123
  100 threads and 500 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    11.70ms    9.02ms 111.24ms   86.37%
    Req/Sec   459.72    126.45     1.36k    76.55%
  50379 requests in 1.10s, 5.38MB read
  Socket errors: connect 0, read 190, write 0, timeout 0
Requests/sec:  45726.14
Transfer/sec:      4.88MB
```
