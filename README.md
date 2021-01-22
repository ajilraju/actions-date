![](https://github.com/ajilraju/actions-date/workflows/action-date%20test/badge.svg) 
# GitHub Action for Date

An Action to run [date](https://www.gnu.org/software/coreutils/manual/html_node/Examples-of-date.html) commands.

## Usage

Exposing the date and time according the options.

```yaml
- uses: ajilraju/actions-date@v0.1
  with:
    args: date +%F
    
- uses: ajilraju/actions-date@v0.1
  with:
    date --date='2 days ago'

- uses: ajilraju/actions-date@v0.1
  with:
    date -d 1may '+%B %-d'
```
## Examples of date

### Here are a few examples. Also see the documentation for the -d option in the previous section.

- To print the date of the day before yesterday:
```bash 
date --date='2 days ago'
```

- To print the date of the day three months and one day hence:
```bash
date --date='3 months 1 day'
```

- To print the day of year of Christmas in the current year:
```bash
date --date='25 Dec' +%j
```

- To print the current full month name and the day of the month:
```bash 
date '+%B %d'
```

But this may not be what you want because for the first nine days of the month, the ‘%d’ expands to a zero-padded two-digit field, for example ‘date -d 1may '+%B %d'’ will print ‘May 01’.
- To print a date without the leading zero for one-digit days of the month, you can use the (GNU extension) ‘-’ flag to suppress the padding altogether:

```bash
date -d 1may '+%B %-d'
```

- To print the current date and time in the format required by many non-GNU versions of date when setting the system clock:
```bash
date +%m%d%H%M%Y.%S
```

- To set the system clock forward by two minutes:
```bash
date --set='+2 minutes'
```

### Reference
- [date command](https://www.gnu.org/software/coreutils/manual/html_node/Examples-of-date.html)

### Thank you
