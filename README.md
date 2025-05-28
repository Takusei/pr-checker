# pr-checker
## Build the image
```
docker build -f Dockerfile -t pr_checker:latest . --no-cache 
```

## Confirm the file and library is installed
```
docker exec -it pr_checker sh
```