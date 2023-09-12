
# Ever Teams Boards Server

This repo is a modified fork of https://github.com/excalidraw/excalidraw-room (Copyright (c) 2020 Excalidraw, [MIT license](https://github.com/excalidraw/excalidraw-room/blob/master/LICENSE))

Collaboration server for [Ever Teams Boards](https://github.com/ever-co/ever-teams-boards).

If you need to use cluster mode with pm2. Checkout: https://socket.io/docs/v4/pm2/

If you are not familiar with pm2: https://pm2.keymetrics.io/docs/usage/quick-start/

# Development

- install

  ```sh
  yarn
  ```

- run development server

  ```sh
  yarn start:dev
  ```

# Start with pm2

```
pm2 start pm2.production.json
```
