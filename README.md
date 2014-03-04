# Redirector

A simple rack redirector.

## Deploy to Heroku

```
heroku domains:add http://old.example.com
heroku config:set TARGET_URL=http://new.example.com
git push heroku master
```

## Development

```
TARGET_URL=http://new.example.com bundle exec rackup
```

## LICENSE

[MIT](http://chocoby.mit-license.org/)
