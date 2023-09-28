# Create acronisUpdate.sh
```bash
nano acronisUpdate.sh
```

Paste the script...

# Add to crontab

Edit crontab
```bash
crontab -e
```
Choose text editor.
Add following line to update on fridays at 2:15 am
```nano
15      2       *       *       fri     ./scripts/acronisUpdate.sh
```
