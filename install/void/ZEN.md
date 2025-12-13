Zen browser isn't in the repos, so you have to install it manually. To do so, go to [the repo](https://github.com/zen-browser/desktop), get the latest release for your cpu architecture, and unarchive it with  
```bash
tar -xf zen.linux-x86_64.tar.xz
```
Replace x86_64 with aarch64 if you are using an ARM CPU, then cd into zen, then copy it to /opt/zen
```bash
sudo cp -r ../zen /opt/zen
```

Then link the binary file to /usr/local/bin/zen

```bash
sudo ln -s /opt/zen/zen /usr/local/bin/zen
```
Then you can use it.
