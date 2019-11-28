#GitHub actions for unix date

This GitHub action exposes the date command for use in the building.

## Usage

Exposing the date and time according the options.

```yaml
- uses: ajilraju/action-date@v0.0.1
  with:
    args: date +%F
```
