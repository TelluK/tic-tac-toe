# tic-tac-toe

Build tic-tac-toe game using [React Tutorial](https://react.dev/learn/tutorial-tic-tac-toe).


### Using Docker


Build image with tag "tac"
```
docker build . -t tac
```

Run image as a container, host machine port 8080 is mapped to container port 8080
```
docker run -p 127.0.0.1:8080:8080 tac
```
